//
//  SecondView.swift
//  ClassWork6B
//
//  Created by khaled falah alazemi  on 19/09/2022.
//

import SwiftUI

struct SecondView: View {
    @Binding var color : String
    @Binding var text : String
    var body: some View {
        ZStack{
            if color == "red" {
                Color.red
                    .opacity(0.5)
            } else if color == "blue" {
                Color.blue
                    .opacity(0.5)
            } else if color == "green" {
                Color.green
                    .opacity(0.5)
            } else {
                Color.yellow
                    .opacity(0.5)
            }
            
            Text(text)
        
        } .ignoresSafeArea()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(color: .constant(""), text: .constant(""))
    }
}
