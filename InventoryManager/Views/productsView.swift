//
//  productsView.swift
//  InventoryManager
//
//  Created by Marcelo de Abreu on 14/06/24.

import SwiftUI

struct productsView: View {
    
    
    var body: some View {
        
        List {
            
            ForEach(MockData.products) { results in
                
                HStack(alignment: .lastTextBaseline) {
                    
                    Text(results.date.formatted(date: .numeric, time: .omitted))
                        .font(.footnote)
                        .frame(width: 80, alignment: .leading)
                    
                    Spacer()
                    
                    Text(results.name)
                    
                    Spacer()
                    
                    Text(results.quantity, format: .number)
                     
                    Spacer()
                    
                    Text(results.productSalePrice, format: .currency(code: "BRL"))
                        .foregroundColor(.green)
                    
                }
                
            }
            
        }
        
        
        
        
        
        
//        ZStack {
//            
//            // change background to apply later to menuview
//            LinearGradient(colors: [Color.purple, Color.blue], startPoint: .top, endPoint: .bottom)
//                .opacity(0.9)
//            
//            VStack {
//                
//                
//                HStack {
//                    Image("mockProduct01")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(width: 80)
//                                        .padding(20)
//                    
//                    
//                    VStack {
//                        
//                        ReusableText(text: "USB-C cable")
//                        
//                        HStack {
//                            ReusableText(text: "Sale:")
//                            
//                            ReusableText(text: "$2.50")
//                                .foregroundColor(.green)
//                        }
//                        
//                        HStack {
//                            ReusableText(text: "Buy:")
//                            
//                            ReusableText(text: "$1.75")
//                                .foregroundColor(.blue)
//                        }
//                        
//                    }
//                }
//                .padding(.horizontal, 10)
//            }
//            .background(Color.gray)
//            .cornerRadius(10)
//            
//                
//            
//        }
    }
}

#Preview {
    productsView()
}
