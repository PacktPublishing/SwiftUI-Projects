//
//  MockAccountPreviewService.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/30/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import Foundation

struct MockAccountPreviewService {
    static let moc = CoreDataManager.shared.context
    // Checking Account
    static var checkingAccount: Account = {
        let account = Account(context: moc)
        account.acctNumber = "99999"
        account.balance = 9000.00
        account.firstName = "Test"
        account.lastName = "Last"
        account.type = "Checking"
        account.card = visaCard
        return account
    }()
    
    // Credit Account
    static var creditAccount: Account = {
        let account = Account(context: moc)
        account.acctNumber = "99999"
        
        account.balance = 99000.00
        account.firstName = "Test"
        account.lastName = "Last"
        account.type = "Credit Card"
        account.card = amexCard
        return account
    }()
    
    
    static var visaCard: Card = {
        let card = Card(context: moc)
        card.color = "#000000"
        card.cvv = "999"
        card.dateCreated = Date()
        card.expirationDate = Date()
        card.logo = "visa-logo"
        return card
    }()
    
    static var amexCard: Card = {
        let card = Card(context: moc)
        card.color = "#000000"
        card.cvv = "999"
        card.dateCreated = Date()
        card.expirationDate = Date()
        card.logo = "amex-logo"
        return card
    }()
}
