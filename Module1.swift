//
//  Moodle.swift
//  STCpay
//
//  Created by user on 22/05/2023.
//

import SwiftUI
import Foundation

struct Book : Identifiable {
        var id = UUID()
        var title : String
        var author : String
        var price : Double
        var inpage : Int
        var readinAage : Int
    }
    
    var book1 = Book (title : "swift1" , author : "Mariam1", price: 150, inpage : 180, readinAage: 13)
    
    var book2 = Book (title : "swift2" , author : "Mariam2", price: 160, inpage : 190, readinAage: 14)
    
    var book3 = Book (title : "swift3" , author : "Mariam3", price: 170, inpage : 200, readinAage: 15)
    
    var book4 = Book (title : "swift4" , author : "Mariam4", price: 180, inpage : 300, readinAage: 16)
    
    var book5 = Book (title : "swift5" , author : "Mariam6", price: 190, inpage : 400, readinAage: 17)
    
    var allBooks = [ book1 , book2 , book3 ,  book4 , book5 ]


struct Module1: View {
    
    var body: some View {
        
        ScrollView {
            VStack {
                
                ForEach(allBooks) { books in
                    
                    HStack{
                        
                        Image(systemName: "building.columns.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100)
                            .padding(.top, 70)
                        Spacer ()
                        
                        VStack{
                            Text (books.title)
                                .font (.largeTitle)
                                .padding (.top)
                            Text (books.author)
                                .font(.title3)
                        }
                        
                        Button ("A"){}
                    }
                    .padding(.all, 20)
                }
            }
        }
    }
}

struct Module1_Previews: PreviewProvider {
    static var previews: some View {
        Module1()
    }
}
