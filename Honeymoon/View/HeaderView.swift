//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Mohsen Abdollahi on 10/22/20.
//  Copyright © 2020 Mohsen Abdollahi. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    
    //MARK:- PROPERTIES
    
    @Binding var showGuideView : Bool
    
    var body: some View {
        HStack{
            Button(action: {
                //Action
                print("Information")
                
            }) {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }.accentColor(Color.primary)
            
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            
            Spacer()
            
            Button(action: {
                //Action
                //print("Guide")
                self.showGuideView.toggle()
            }) {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            }.accentColor(Color.primary)
                .sheet(isPresented: $showGuideView) {
                    GuideView()
            }
            
            
        }.padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    
    //    @State static var showGuide : Bool = false
    
    static var previews: some View {
        HeaderView(showGuideView: .constant(false))
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
