//
//  HoneymoonModel.swift
//  Honeymoon
//
//  Created by Mohsen Abdollahi on 10/21/20.
//  Copyright © 2020 Mohsen Abdollahi. All rights reserved.
//

import SwiftUI

struct Destination : Identifiable {
    var id = UUID()
    var place : String
    var country : String
    var imageName : String
}
