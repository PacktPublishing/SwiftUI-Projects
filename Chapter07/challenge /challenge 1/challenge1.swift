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

