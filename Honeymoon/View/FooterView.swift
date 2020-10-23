//
//  FooterView.swift
//  Honeymoon
//
//  Created by Mohsen Abdollahi on 10/22/20.
//  Copyright © 2020 Mohsen Abdollahi. All rights reserved.
//

import SwiftUI

struct FooterView: View {
    
    //MARK: - PROPERTIES
    
    @Binding var showBookingAlert : Bool
    
    var body: some View {
        HStack{
            
            Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light))
            Spacer()
            
            Button(action: {
                //Action
//                print("Success!")
                self.showBookingAlert.toggle()
            }) {
                Text("Book Destionation".uppercased())
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal,20)
                    .padding(.vertical,12)
                    .accentColor(Color.pink)
                .background(
                
                    Capsule().stroke(Color.pink, lineWidth: 2)
                )
            }
            
            Spacer()
            
            Image(systemName: "heart.circle")
                .font(.system(size:42, weight: .light))
            
        }.padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    
    @State static var showBookingAlert : Bool = false
    
    static var previews: some View {
        FooterView(showBookingAlert: $showBookingAlert)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
