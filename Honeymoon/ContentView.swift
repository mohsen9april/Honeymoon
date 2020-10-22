//
//  ContentView.swift
//  Honeymoon
//
//  Created by Mohsen Abdollahi on 10/21/20.
//  Copyright © 2020 Mohsen Abdollahi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //MARK:- PROPERTIES
    
    var honeymoons : [Destination] = honeymoonData
    
    var body: some View {
        
        
        VStack {
            
            HeaderView()
            
            Spacer()
            
            CardView(honeymoon: honeymoons[2]).padding()
            
//            ScrollView(.horizontal, showsIndicators: true) {
//                HStack{
//                    ForEach(honeymoons) { item in
//                        CardView(honeymoon: item)
//                    }
//                }
//                } .padding()
            
            Spacer()
            
            FooterView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
