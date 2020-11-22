//
//  ShoeData.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/8/20.
//

import Foundation

struct ShoeData {
    static let productItems = [
        ProductItem(name: "Nike 1", image: "nike-kobe-ad-nxt", productNo: "NK-0001", brand: "Nike", price: 150.00),
        ProductItem(name: "Nike 2", image: "nike-mamba-fury", productNo: "NK-0002", brand: "Nike", price: 100.00),
        ProductItem(name: "Adidas 1", image: "adidas-originals-hardcourt-low", productNo: "AD-0001", brand: "Adidas", price: 50.00),
        ProductItem(name: "Adidas 2", image: "adidas-originals-hardcourt", productNo: "AD-0002", brand: "Adidas", price: 95.00),
        ProductItem(name: "Asics 1", image: "asics-gel-kayano-26", productNo: "AS-0001", brand: "Asics", price: 80.00),
        ProductItem(name: "Asics 2", image: "asics-gel-nimbus-22", productNo: "AS-0002", brand: "Asics", price: 85.00),
        ProductItem(name: "Champion 1", image: "champion-rally-crossover", productNo: "CH-0001", brand: "Champion", price: 59.99),
        ProductItem(name: "Champion 2", image: "champion-super-court-low", productNo: "CH-0002", brand: "Champion", price: 68.99),
        ProductItem(name: "Converse 1", image: "converse-ctas-buckle-up-hi", productNo: "CV-0001", brand: "Converse", price: 99.99),
        ProductItem(name: "Converse 2", image: "converse-unt1tl3d-hi", productNo: "CV-0002", brand: "Converse", price: 109.99),
        ProductItem(name: "Fila 1", image: "fila-disruptor-2", productNo: "FI-0001", brand: "Fila", price: 134.99),
        ProductItem(name: "Fila 2", image: "fila-grant-hill-96-mid", productNo: "FI-0002", brand: "Fila", price: 124.99),
        ProductItem(name: "Jordan 1", image: "jordan-max-aura-2", productNo: "JD-0001", brand: "Jordan", price: 259.99),
        ProductItem(name: "Jordan 2", image: "jordan-maxin-200", productNo: "JD-0002", brand: "Jordan", price: 199.99),
        ProductItem(name: "New Balance 1", image: "new-balance-omn1s-low", productNo: "NB-0001", brand: "New Balance", price: 89.99),
        ProductItem(name: "New Balance 2", image: "new-balance-801", productNo: "NB-0002", brand: "New Balance", price: 79.99),
        ProductItem(name: "Puma 1", image: "puma-calibrate-runner", productNo: "PA-0001", brand: "Puma", price: 67.99),
        ProductItem(name: "Puma 2", image: "puma-suede-new-classic", productNo: "PA-0002", brand: "Puma", price: 89.99),
        ProductItem(name: "Reebok 1", image: "reebok-iverson-legacy", productNo: "RB-0001", brand: "Reebok", price: 150.00),
        ProductItem(name: "Reebok 2", image: "reebok-workout-plus-altered", productNo: "RB-0002", brand: "Reebok", price: 100.00),
        ProductItem(name: "Under Armour 1", image: "under-armour-spawn-low", productNo: "UA-0002", brand: "Under Armour", price: 68.99)
    ]
    
    static let brandsItems = [
        BrandItem(name: "Nike", image: "nike", key: "NK"),
        BrandItem(name: "Puma", image: "puma", key: "PA"),
        BrandItem(name: "Converse", image: "converse", key: "CV"),
        BrandItem(name: "Fila", image: "fila", key: "FI"),
        BrandItem(name: "Reebok", image: "reebok", key: "RB"),
        BrandItem(name: "Under Armour", image: "under-armour", key: "UA"),
        BrandItem(name: "Champion", image: "champion", key: "CH"),
        BrandItem(name: "Asics", image: "asics", key: "AS"),
        BrandItem(name: "New Balance", image: "new-balance", key: "NB"),
        BrandItem(name: "Jordan", image: "jordan", key: "JD"),
        BrandItem(name: "New Era", image: "new-era", key: "NE"),
        BrandItem(name: "Adidas", image: "adidas", key: "AD")
    ]
}
