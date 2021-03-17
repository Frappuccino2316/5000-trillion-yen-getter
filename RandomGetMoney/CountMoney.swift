//
//  CountMoney.swift
//  RandomGetMoney
//
//  Created by 髙木文弘 on 2021/03/17.
//

import Foundation

class CountMoney: ObservableObject {
    @Published var money: Int = 0
    @Published var failure: Bool = false
    
    func earnMoney() {
        let price: Int = Int.random(in: 1...1000000000000000)
        money += price
    }
    
    func challengeEarn() {
        let random = Int.random(in: 1...10)
        if random == 1 {
            failure = true
            money = 0
        } else {
            earnMoney()
        }
    }
}
