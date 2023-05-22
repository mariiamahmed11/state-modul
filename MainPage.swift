//
//  MainPage.swift
//  STCpay
//
//  Created by user on 22/05/2023.
//

import SwiftUI

struct MainPage: View {
    @State var show = false
    
    var body: some View {
        
        ZStack{
            Color.gray.opacity(0.1)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    NavigationLink{
                        Profile()
                        //.navigationBarHidden(true)
                    }
                label:{
                    Image(systemName:"person.crop.circle")
                        .foregroundColor(Color.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 25).bold())
                }
                    Image(systemName:"bell")
                        .foregroundColor(Color("Color 1"))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .font(.system(size: 25).bold())
                }
                .padding(0)
                HStack {
                    Text("Current balance")
                        .padding(.top,30)
                        .font(.body)
                        .foregroundColor(.gray)
                        .font(.system(size: 30))
                    
                    Button {
                        show = true
                    }
                    
                label: {
                    Text("+")
                        .frame(width:15 , height: 15)
                        .foregroundColor(.white)
                        .padding(.all,2)
                        .background(Color.green .cornerRadius(3))
                        .font(.system(size: 17).bold())
                    .padding(.top,30) }
                }
                
                Button {print("")}
            label: {
                HStack( alignment: .firstTextBaseline, spacing: 1){
                    Text("SAR")
                        .foregroundColor(.black)
                        .font(.system(size: 17))
                    Text("300,000")
                        .foregroundColor(.black)
                        .font(.system(size: 45))
                    Text(".90")
                        .foregroundColor(.black)
                    .font(.system(size:17)) }
            }
                
                VStack (spacing: 1) {
                    
                    GeometryReader { geometry in
                        HStack() {
                            Button {
                                print("Image tapped!")                            }
                            
                        label: {
                            Image("Image 7")
                                .resizable()
                                . scaledToFit()
                                .frame(width: geometry.size.width * 0.50, height: 90)
                                .border(Color.white, width: 9)
                                .background(Color.white)
                                .cornerRadius(3)
                        }
                            
                            Button {
                                print("Image tapped!")
                            }
                            
                        label: {
                            Image("Image 9")
                                .resizable()
                                . scaledToFit()
                                .frame(width: geometry.size.width * 0.50, height: 90)
                                .border(Color.white, width: 9)
                                .background(Color.white)
                                .cornerRadius(3)
                        }
                        }
                        
                    }
                    
                    GeometryReader { geometry in
                        HStack() {
                            Button {
                                print("Image tapped!")
                            }
                            
                        label: {
                            Image("Image 8")
                                .resizable()
                                . scaledToFit()
                                .frame(width: geometry.size.width * 0.50, height: 90)
                                .border(Color.white, width: 9)
                                .background(Color.white)
                                .cornerRadius(3)
                        }
                            
                            
                            Button {
                                print("Image tapped!")
                            }
                            
                        label: {
                            Image("Image 6")
                                .resizable()
                                . scaledToFit()
                                .frame(width: geometry.size.width * 0.50, height: 90)
                                .border(Color.white, width: 9)
                                .background(Color.white)
                                .cornerRadius(3)
                        }
                        }
                    }
                    
                    GeometryReader { geometry in
                        HStack() {
                            Button {
                                print("Image tapped!")
                            }
                            
                        label: {
                            Image("Image 5")
                                .resizable()
                                . scaledToFit()
                                .frame(width: geometry.size.width * 0.50, height: 90)
                                .border(Color.white, width: 9)
                                .background(Color.white)
                                .cornerRadius(3)
                        }
                            
                            Button {
                                print("Image tapped!")
                            }
                            
                        label: {
                            Image("Image 4")
                                .resizable()
                                . scaledToFit()
                                .frame(width: geometry.size.width * 0.50, height: 90)
                                .border(Color.white, width: 9)
                                .background(Color.white)
                                .cornerRadius(3)
                        }
                        }
                    }
                }
                
                ImagesScroll()
                
            }
            
            .padding(.all, 30)
        }
        .sheet(isPresented:$show )  {
            Sheet()
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
