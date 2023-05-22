//
//  Market.swift
//  STCpay
//
//  Created by user on 22/05/2023.
//

import SwiftUI
struct brand : Identifiable {
        var id = UUID()
        var name : String
        var image : String
    }
    
var brand1 = brand(name: "itunes", image: "29")
var brand2 = brand(name: "playstation", image: "30")
var brand3 = brand(name: "googleplay", image: "31")
var brand4 = brand(name: "pupge", image: "32")
var brand5 = brand(name: "lebara", image: "33")

var allbrands = [brand1, brand2, brand3, brand4, brand5]


struct Market: View {
    var body: some View {
        
        VStack{
            
            Text ("Promotion")
                .font(.title3)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity)
            
            ScrollView(.horizontal , showsIndicators: false){
                
                HStack (spacing: 10){
                    Image("28")
                        .resizable()
                        . scaledToFit()
                        .frame(height: 150)
                        . scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(9.0)
                    Image("28")
                        .resizable()
                        . scaledToFit()
                        .frame(height: 150)
                        . scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(9.0)
                }
            }
            Spacer()
            
            Text ("shop by brand")
                .font(.title3)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity)
            
            ScrollView (.horizontal , showsIndicators: false){
                
                HStack(spacing: 20){
                    ForEach(allbrands) { brands in
                        VStack{
                            Image(brands.image)
                                .resizable()
                                .scaledToFit()
                                .frame(minWidth: 60,maxWidth: 60)
                                .clipShape(Circle())
                                .padding(9)
                            
                            
                            Text (brands.name)
                                .font(.title3)
                                .foregroundColor(.gray)
                                .frame(maxWidth: .infinity)
                        }
                        .frame(width: 100)
                        
                        }
                    }
                }.padding(10)
                
            
                //.padding(10)
            }
        }
    }


struct Market_Previews: PreviewProvider {
    static var previews: some View {
        Market()
    }
}
