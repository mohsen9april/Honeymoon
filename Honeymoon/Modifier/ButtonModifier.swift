//
//  ButtonModifier.swift
//  Honeymoon
//
//  Created by Mohsen Abdollahi on 10/25/20.
//  Copyright © 2020 Mohsen Abdollahi. All rights reserved.
//

import SwiftUI

struct ButtonModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.headline)
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Capsule().fill(Color.pink))
        .foregroundColor(Color.white)
        
    }
}
