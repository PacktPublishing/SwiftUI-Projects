//
//  API.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 4/12/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import Foundation
import Combine

struct API {
    
    enum Error: LocalizedError, Identifiable {
        var id: String { localizedDescription }

        case addressUnreachable(URL)
        case invalidResponse

        var errorDescription: String? {
            switch self {
                case .invalidResponse: return "The server responded with garbage."
            case .addressUnreachable(let url): return "\(url.absoluteString)"
            }
        }
    }

    enum EndPoint {
        static let base = URL(string: "https://reqres.in/")!

        case post

        var url: URL {
            switch self {
            case .post:
                return EndPoint.base.appendingPathComponent("api/tesla-order")
            }
        }

        static func request(with url: URL, and order:OrderViewModel) -> URLRequest {
            guard let encoded = try? JSONEncoder().encode(order) else {
                fatalError("Invalid")
            }

            var request = URLRequest(url: url)
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.httpMethod = "POST"
            request.httpBody = encoded

            return request
        }
    }

    private let decoder = JSONDecoder() // Step 1
    func post(with order: OrderViewModel) -> AnyPublisher<OrderViewModel, Error> { // Step 2
        URLSession.shared.dataTaskPublisher(for: EndPoint.request(with: EndPoint.post.url, and: order)) // Step 3
            .map { $0.data } // Step 4
            .decode(type: OrderViewModel.self, decoder: decoder) // Step 5
            .mapError { error in // Step 6
                switch error {
                case is URLError:
                    return Error.addressUnreachable(EndPoint.post.url)
                default: return Error.invalidResponse
                }
            }
            .print() // Step 7
            .map { return $0 } // Step 8
            .eraseToAnyPublisher() // Step 9
    }
}
