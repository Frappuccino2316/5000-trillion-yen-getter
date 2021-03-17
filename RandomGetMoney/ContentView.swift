//
//  ContentView.swift
//  RandomGetMoney
//
//  Created by 髙木文弘 on 2021/03/16.
//

import SwiftUI

struct ContentView: View {
    @State var message: String = "5000兆円チャレンジ！"
    @State var countMoney: CountMoney = CountMoney()
    
    var body: some View {
        NavigationView {
            VStack {
                Text(message)
                    .font(.title)
                    .navigationBarTitle("5000兆円欲しい!!", displayMode: .inline)
                    .navigationBarItems(
                        trailing:
                            Button(action: {
                                message = "5000兆円チャレンジ！"
                                countMoney.failure = false
                            }) {
                                Text("Reset")
                                    .padding()
                            }
                    )
                    .padding()
                Button(action: {
                    countMoney.challengeEarn()
                    if countMoney.failure {
                        message = "失敗しました。。。"
                    } else {
                        if countMoney.money >= 5000000000000000 {
                            message = "5000兆円獲得！！おめでとうございます！！"
                        } else {
                            message = "\(countMoney.money)円"
                        }
                    }
                }) {
                    Text("稼ぐ！！")
                }
                .font(.title)
                .padding()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
