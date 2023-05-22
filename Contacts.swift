//
//  Contacts.swift
//  STCpay
//
//  Created by user on 22/05/2023.
//

import SwiftUI

struct MyContact : Identifiable {
        var id = UUID()
        var name : String
        var phone : String
        var image : String
        var invint : String
    }
    
var contact1 = MyContact(name:"Mariam", phone: "+96653811432", image:"20", invint:"")
var contact2 = MyContact(name:"Njood", phone: "+96653831432", image:"21" , invint:"")
var contact3 = MyContact(name:"Reema", phone: "+96653815442", image:"19", invint:"")
var contact4 = MyContact(name:"Kholod", phone: "+96656733332", image:"22", invint:"")
var contact5 = MyContact(name:"Lama", phone: "+9665375443627", image:"23", invint:"invit")
var contact6 = MyContact(name:"Shima", phone: "+966535539872", image:"25", invint:"invit")
var contact7 = MyContact(name:"Renad", phone: "+9665399885332", image:"26", invint:"invit")
var contact8 = MyContact(name:"Haneen", phone: "+96653775292", image:"27", invint:"invit")
      
var allContacts = [ contact1 , contact2 , contact3 ,  contact4 , contact5, contact6, contact7, contact8]

struct Contacts: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                
                Text("Contacts")
                    .frame(maxWidth: .infinity,alignment: .center )
                    .font(.title)
                    .padding(10)
                
                ForEach(allContacts) { contacts in
                    
                    HStack{
                        Image(contacts.image)
                            .resizable()
                            .scaledToFit()
                            .frame(minWidth: 60,maxWidth: 60)
                            .clipShape(Circle())
                            .padding(9)

                        VStack(alignment: .leading){
                            Text (contacts.name)
                                .font (.title2)
                                .padding (.top)
                            Text (contacts.phone)
                                .font(.title3)
                                .foregroundColor(.gray)
                                .frame(maxWidth: .infinity)
                        }
                        
                        Text (contacts.invint)
                            .font(.title3)
                            .foregroundColor(.blue)
                            .frame(maxWidth: .infinity ,alignment: .trailing)
                            .padding(15)
                    
                    }
                     Divider()
                }
            }
            //.padding(10)
        }
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        Contacts()
    }
}
