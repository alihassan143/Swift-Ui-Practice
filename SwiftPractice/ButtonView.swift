//
//  ButtonView.swift
//  SwiftPractice
//
//  Created by Mac on 19/01/2022.
//

import SwiftUI

struct ButtonView: View {
    var buttonColor:Color
    var body: some View {
        Text("Change Color").font(.system(size: 20, weight: .medium)).frame(width: 300, height: 50, alignment: .center).foregroundColor(.black).background(buttonColor).cornerRadius(10)
    }
}
