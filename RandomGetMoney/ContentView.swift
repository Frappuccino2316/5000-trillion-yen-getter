//
//  ContentView.swift
//  RandomGetMoney
//
//  Created by 髙木文弘 on 2021/03/16.
//

import SwiftUI

struct ContentView: View {
    @State var message: String = "5000兆円チャレンジ！"
    @State var price: Int = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Text(message)
                    .font(.title)
                    .navigationBarTitle("5000兆円欲しい!!")
                    .navigationBarItems(trailing:
                        Button(action: {
                            message = "5000兆円チャレンジ！"
                        }) {
                            Text("Reset")
                        }
                    )
                    .padding()
                Button(action: {
                    price = Int.random(in: 1...5000000000000000)
                    message = String(price)
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
