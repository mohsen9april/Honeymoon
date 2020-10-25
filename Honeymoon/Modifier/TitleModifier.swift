//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Mohsen Abdollahi on 10/25/20.
//  Copyright © 2020 Mohsen Abdollahi. All rights reserved.
//

import SwiftUI

struct TitleModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}
