```swift
func fetchPlayers() -> AnyPublisher<[Player], Error> {

    URLSession.shared.dataTaskPublisher(for: EndPoint.request(with: EndPoint.players.url))
        .map { return $0.data }
        .decode(type: [Player].self, decoder: decoder)
        .mapError { error in
            switch error {
            case is URLError:
                return Error.addressUnreachable(EndPoint.players.url)
            default: return Error.invalidResponse
            }
        }
        .map { $0 }
        .eraseToAnyPublisher()
}


func fetchGames() -> AnyPublisher<[Game], Error> {

    URLSession.shared.dataTaskPublisher(for: EndPoint.request(with: EndPoint.games.url))
        .map { return $0.data }
        .decode(type: [Game].self, decoder: decoder)
        .mapError { error in
            switch error {
            case is URLError:
                return Error.addressUnreachable(EndPoint.games.url)
            default: return Error.invalidResponse
            }
        }
        .map { $0 }
        .eraseToAnyPublisher()
}
```

