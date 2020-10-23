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
    @State var showAlert : Bool = false

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
            
            FooterView(showBookingAlert: $showAlert)
        }.alert(isPresented: $showAlert) {
            Alert(
                title: Text("Success"),
                message: Text("wishing a lovely and most precious of the times together for the amazing couple"),
                dismissButton: .default(Text("Happy Honeymoon")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
