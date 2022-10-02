//
//  ContentView.swift
//  FinanceApp
//
//  Created by Radu Maftei on 01.10.2022.
//

import SwiftUI

public func setFontSizeAndWeight(size: CGFloat, weight: Font.Weight) -> Font {
    Font.system(size: size).weight(weight)
}

struct HeaderView: View {
    var body: some View {
        HStack {
            Image("FemalePortrait")
                .resizable()
                .frame(width: 45, height: 45)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text("Hello, Helen")
                    .font(.title3)
                    .bold()
                Text("Good Day!")
                    .font(.caption)
            }
            .foregroundColor(.black)
            Spacer()
                .frame(maxWidth: 100)
            Image(systemName: "bell")
                .foregroundColor(.black)
                .font(setFontSizeAndWeight(size: 15, weight: .light))
            
            
            
        }
        .padding()
        .background(Color.white)
    }
}

struct BalanceView: View {
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text("Balance")
                Text("$ 18 230")
                    .font(.system(size: 22, weight: .bold))
            }
            Spacer()
                .frame(maxWidth: 100)
            Text("Top up")
                .fixedSize(horizontal: true, vertical: false)
                .padding([.horizontal], 13)
                .padding([.vertical], 8)
                .foregroundColor(Color.white)
                .font(setFontSizeAndWeight(size: 11, weight: .bold))
                .background(
                    RoundedRectangle(cornerRadius: 50)
                        .fill(Color.indigo)
                        .shadow(radius: 3)
                )
        }
        .foregroundColor(.black)
        .background(Color.white)
    }
}

struct InvestmentView: View {
    var body: some View {
        VStack {
            HStack (spacing: 100) {
                VStack(alignment: .leading) {
                    Text("Play \"Only Forward\"")
                        .font(setFontSizeAndWeight(size: 8, weight: .medium))
                    Text("12 investments")
                        .font(setFontSizeAndWeight(size: 5, weight: .ultraLight))
                }
                Image(systemName: "tray.circle.fill")
                    .foregroundColor(Color("TextGreen"))
            }
            .padding(.bottom, 5)
            HStack(spacing: 55) {
                VStack (alignment: .leading) {
                    Text("Invested")
                        .font(
                            setFontSizeAndWeight(size: 6, weight: .light)
                        )
                    Text("$ 24 118")
                        .font(
                            setFontSizeAndWeight(size: 7, weight: .bold)
                        )
                }
                VStack (alignment: .leading) {
                    Text("Profit (%)")
                        .font(
                            setFontSizeAndWeight(size: 6, weight: .light)
                        )
                    Text("5.12%")
                        .font(
                            setFontSizeAndWeight(size: 6, weight: .light)
                        )
                        .foregroundColor(.green)
                }
                VStack (alignment: .leading) {
                    Text("Profit ($)")
                        .font(
                            setFontSizeAndWeight(size: 6, weight: .light)
                        )
                    Text("+$ 1 234")
                        .font(
                            setFontSizeAndWeight(size: 6, weight: .light)
                        )
                        .foregroundColor(.green)
                }
            }        }
        .padding()
        .foregroundColor(Color.black)
        .background(
            RoundedRectangle(cornerRadius: 18)
                .fill()
                .shadow(radius: 3)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color("LightGreen")/*@END_MENU_TOKEN@*/)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        InvestmentView()
    }
}
