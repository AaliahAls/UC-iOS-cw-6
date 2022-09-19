//
//  SecondView.swift
//  ClassWork6B
//
//  Created by khaled falah alazemi  on 19/09/2022.
//

import SwiftUI

struct SecondView: View {
    @Binding var color : Color
    @Binding var text : String
    var body: some View {
        ZStack{
            color
                .opacity(0.5)
            Text(text)
        
        } .ignoresSafeArea()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(color: .constant(Color.gray), text:.constant("") )
    }
}
