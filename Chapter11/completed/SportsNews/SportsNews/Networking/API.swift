//
//  API.swift
//  SportsNews
//
//  Created by Craig Clayton on 11/3/20.
//

import Combine
import SwiftUI

struct API {
    enum Error: LocalizedError, Identifiable { // (1)
        var id: String { localizedDescription }

        case addressUnreachable(URL) // (2)
        case invalidResponse

        var errorDescription: String? { // (3)
            switch self {
                case .invalidResponse: return "The server responded with garbage."
                case .addressUnreachable(let url): return "\(url.debugDescription)"
            }
        }
    }

    enum EndPoint {
        static let baseURL = URL(string: "http://127.0.0.1:3000/")! // (1)

        case games  // (2)
        case players
        case dashboard

        var url: URL {
            switch self {
            case .games:
                return EndPoint.baseURL.appendingPathComponent("/api/v1/games")
            case .players:
                return EndPoint.baseURL.appendingPathComponent("/api/v1/players")
            case .dashboard:
                return EndPoint.baseURL.appendingPathComponent("/api/v1/dashboard")
            }
        }

        static func request(with url: URL) -> URLRequest {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")

            return request
        }


    }

    private let decoder = JSONDecoder()

    func fetchDashboard() -> AnyPublisher<Dashboard, Error> { // (1)

        URLSession.shared.dataTaskPublisher(for: EndPoint.request(with: EndPoint.dashboard.url))  // (2)
            .map { return $0.data } // (3)
            .decode(type: Dashboard.self, decoder: decoder)// (4)
          .print() // (5)
            .mapError { error in // (6)
                switch error {
                case is URLError:
                    return Error.addressUnreachable(EndPoint.dashboard.url)
                default: return Error.invalidResponse
                }
            }
          .print() // (7)
            .map { $0 } // (8)
            .eraseToAnyPublisher() // (9)
    }
    
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
}



