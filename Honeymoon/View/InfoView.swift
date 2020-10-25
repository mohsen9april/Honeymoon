//
//  InfoView.swift
//  Honeymoon
//
//  Created by Mohsen Abdollahi on 10/25/20.
//  Copyright © 2020 Mohsen Abdollahi. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("App Info")
                    .fontWeight(.black)
                .modifier(TitleModifier())
                
                Spacer(minLength: 10)
                
                Button(action: {
                    //Action
                }) {
                    Text("Continue".uppercased())
                    .modifier(ButtonModifier())
                }
                
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top,15)
            .padding(.bottom,25)
            .padding(.horizontal,25)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
