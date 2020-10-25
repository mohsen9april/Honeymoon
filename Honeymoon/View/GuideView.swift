//
//  GuideView.swift
//  Honeymoon
//
//  Created by Mohsen Abdollahi on 10/22/20.
//  Copyright © 2020 Mohsen Abdollahi. All rights reserved.
//

import SwiftUI

struct GuideView: View {
    //MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20){
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("Get Started!")
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .foregroundColor(Color.pink)
                
                Text("Discover and puck the perfect destination for your romantic honeymoon!")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                
                VStack(alignment: .leading, spacing: 25) {
                    GuideComponent(
                        title: "Like",
                        subtitle: "Swipe Right",
                        description: "Do you Like this destination? Touch the screen and swipe right. It will be saved to the favourites.",
                        icon: "heart.circle")
                }
                
                GuideComponent(
                    title: "Dismiss",
                    subtitle: "Swipe left",
                    description: "would you rather skip this place? Touch the screen and swipe left, you will no longer see it",
                    icon: "xmark.circle")
                
                GuideComponent(
                    title: "BOOK",
                    subtitle: "Tap the button",
                    description: "Our selection of honeymoon resorts is perfect setting for you to embark your new life toghether",
                    icon: "checkmark.square")
                
                Spacer(minLength: 10)
                
                Button(action: {
                    //Action
//                    print("A Button was tapped!")
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Continue".uppercased())
                        .font(.headline)
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .background(Capsule().fill(Color.pink))
                        .foregroundColor(Color.white)
                }
                
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
            
        }
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
