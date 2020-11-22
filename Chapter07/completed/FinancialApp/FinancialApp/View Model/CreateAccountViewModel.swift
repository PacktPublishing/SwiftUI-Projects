//
//  CreateAccountViewModel.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/30/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI
import Combine
import CoreData

enum AccountType: String {
    case debit = "Debit Card"
    case creditcard = "Credit Card"
}

enum CardType: String {
    case americanexpress
    case visa
    case mastercard
}

class CreateAccountViewModel: ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var limit = ""
    @Published var selectedAccountType = 0
    @Published var selectedCardType = 0
    @Published var selectedCardColorType = 0
    @Published var selectedCardColor: UIColor = .baseEndeavourBlue
    @Published var displayExpDate = ""
    @Published var ccNumber = ""
    @Published var cvv = ""
    @Published var expDate = Date()
    
    var creditLimit: Float = 0.0
    var selectorLogos = ["mc-logo-selector", "visa-logo-selector", "am-logo-selector"]
    var cardLogos = ["mc-logo-selector", "visa-logo", "am-logo"]
    var accountTypes: [String] = [AccountType.debit.rawValue, AccountType.creditcard.rawValue]
    var colors: [Color] = [.baseEndeavourBlue,
                           .baseHokiBlue,
                           .black,
                           .red,
                           .pink,
                           .purple,
                           .gray]
    
    var uiColors: [UIColor] = [.baseEndeavourBlue,
                               .baseHokiBlue,
                               .black,
                               .red,
                               .systemPink,
                               .purple,
                               .gray]
    
    // Add methods after here
    
    func createAccount() {
        let currentAccount = Account(context: CoreDataManager.shared.context) // (1)
        CoreDataManager.shared.context.perform { // (2)
            let accountNo = UUID().uuidString.suffix(6) // (3)
            let currentCard = Card(context: CoreDataManager.shared.context) // (4)
            currentCard.expirationDate = self.expDate
            currentCard.number = self.ccNumber
            currentCard.cvv = self.cvv
            currentCard.id = String(accountNo)
            currentCard.dateCreated = Date()
            currentCard.color = self.selectedCardColor.hexString
            currentCard.logo = self.cardLogos[self.selectedCardType]
            
            if self.accountTypes[self.selectedAccountType] == AccountType.creditcard.rawValue { // (1)
                currentAccount.balance = self.creditLimit // (2)
            } else {
                currentAccount.balance = Float(self.createRandomBalance()) // (3)
            }
            currentAccount.acctNumber = String(accountNo)
            currentAccount.firstName = self.firstName
            currentAccount.lastName = self.lastName
            currentAccount.dateCreated = Date()
            currentAccount.type = self.accountTypes[self.selectedAccountType]
            currentAccount.card = currentCard // (4)
            
            CoreDataManager.shared.save() // 1
            self.clear() // 2
        }
    }
    
    func hasAccounts() -> Bool {
        let request: NSFetchRequest<Account> = Account.fetchRequest()
        var accounts: [Account] = []
        do {
            for data in try CoreDataManager.shared.context.fetch(request) {
                accounts.append(data)
            }
            if accounts.count > 0 { return true }
            return false
        } catch let error as NSError {
            fatalError("Unresolved error \(error), \(error.userInfo)")
        }
    }
    
    func fetchCard(with id: String) -> Card? {
        var card: Card?
        
        CoreDataManager.shared.context.perform {
            let request: NSFetchRequest<Card> = Card.fetchRequest()
            request.predicate = NSPredicate(format: "id = %@", id)
            request.fetchLimit = 1

            card = try? CoreDataManager.shared.context.fetch(request).first
        }
        
        return card
    }

    func fetchCards() -> [Card]? {
        var cards: [Card] = []

        CoreDataManager.shared.context.perform {
            let request: NSFetchRequest<Card> = Card.fetchRequest()
            if let items = try? CoreDataManager.shared.context.fetch(request) {
                for item in items {
                    cards.append(item)
                }
            }
        }

        return cards
    }

    func deleteCard(with id: String) {
        CoreDataManager.shared.context.perform {
            let request: NSFetchRequest<Card> = Card.fetchRequest()
            request.predicate = NSPredicate(format: "id = %@", id)
            request.fetchLimit = 1
            
            if let item = try? CoreDataManager.shared.context.fetch(request).first {
                CoreDataManager.shared.context.delete(item)
            }
        }
    }

    func deleteCards() {
        CoreDataManager.shared.context.perform {
            let request: NSFetchRequest<Card> = Card.fetchRequest()
            
            if let items = try? CoreDataManager.shared.context.fetch(request) {
                for item in items {
                    CoreDataManager.shared.context.delete(item)
                }
            }
        }
    }


    
}


extension CreateAccountViewModel {
    func initAccount() {
        expDate = generateCardExpiration(amount: 2)
        ccNumber = generateCCNumber()
        cvv = generateCVV()
    }
    
    func createRandomBalance() -> Int {
        return randomNumberWith(digits: 5)
    }
    
    func generateCCNumber() -> String {
        let result = randomNumberWith(digits: 4)
        let result2 = randomNumberWith(digits: 4)
        let result3 = randomNumberWith(digits: 4)
        let result4 = randomNumberWith(digits: 4)
        return "\(result) \(result2) \(result3) \(result4)"
    }
    
    func generateCVV() -> String {
        return "\(randomNumberWith(digits: 3))"
    }
    
    func generateCardExpiration(amount: Int) -> Date {
        let currentDate = getCurrentDate()
        var dateComponent = DateComponents()
        
        dateComponent.year = amount
        dateComponent.month = 1
        
        if let futureDate = Calendar.current.date(byAdding: dateComponent, to: currentDate) {
            let formatter = DateFormatter()
            formatter.dateFormat = "MM/yy"
            self.displayExpDate = formatter.string(from: futureDate)
            
            return futureDate
        }
        
        return currentDate
    }
    
    func getCurrentDate() -> Date {
        let calendar = Calendar.current
        let now = Date()
        var nowComponents = DateComponents()
        
        nowComponents.year = Calendar.current.component(.year, from: now)
        nowComponents.month = Calendar.current.component(.month, from: now)
        nowComponents.day = Calendar.current.component(.day, from: now)
        nowComponents.timeZone = NSTimeZone.local
        
        if let now = calendar.date(from: nowComponents) {
            return now
        }
        
        return now
    }
    
    func clear() {
        firstName = ""
        lastName = ""
        cvv = ""
        selectedAccountType = 0
        selectedCardType = 0
        selectedCardColorType = 0
    }
    
    func formatCreditLimit() {
        
        let currencyFormatter = NumberFormatter()
        let acceptableNumbers: String = "0987654321"
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        currencyFormatter.locale = Locale.current
        currencyFormatter.maximumFractionDigits = 0
        
        if CharacterSet(charactersIn: acceptableNumbers).isSuperset(of: CharacterSet(charactersIn: limit)) {
            if let value = Float(limit) {
                if let priceString = currencyFormatter.string(from: NSNumber(value: value)) {
                    self.limit = priceString
                    self.creditLimit = value
                } else {
                    self.limit = "$0.00"
                    self.creditLimit = 0
                }
            }
        } else {
            print("Invalid String \(limit)")
        }
    }
}
