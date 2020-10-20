//
//  CardView.swift
//  Honeymoon
//
//  Created by Mohsen Abdollahi on 10/21/20.
//  Copyright © 2020 Mohsen Abdollahi. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    //MARK:- PROPERTIES
    
    var honeymoon : Destination
    
    
    var body: some View {
        
        Image(honeymoon.imageName)
        .resizable()
        .cornerRadius(24)
            .scaledToFit()
            .frame(minWidth: 0, maxWidth: .infinity)
        .overlay(
        
            VStack(alignment: .center, spacing: 12){
                Text(honeymoon.place.uppercased())
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .shadow(radius: 1)
                    .padding(.horizontal,18)
                    .padding(.vertical,4)
                    .overlay(
                
                        Rectangle()
                            .fill(Color.white)
                            .frame(height: 1),
                        alignment: .bottom
                
                )
                Text(honeymoon.country.uppercased())
                    .foregroundColor(Color.black)
                    .font(.footnote)
                    .fontWeight(.bold)
                    .frame(minWidth: 85)
                    .padding(.horizontal,10)
                    .padding(.vertical,5)
                    .background(Capsule().fill(Color.white))
                
            }
            .frame(minWidth: 280)
            .padding(.bottom, 50),
            alignment: .bottom
        
        )
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(honeymoon: honeymoonData[1])
            .previewLayout(.fixed(width: 375, height: 600))
    }
}
