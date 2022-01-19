//
//  WeatherDayview.swift
//  SwiftPractice
//
//  Created by Mac on 19/01/2022.
//

import Foundation
import SwiftUI
struct WeatherdayView: View {
    var dayofweek:String
    var imagename:String
    var temperature:Int
    var body: some View {
        VStack{
            Text(dayofweek).font(.system(size: 16,weight:.bold,design: .default)).foregroundColor(.white)
            Image(systemName: imagename).renderingMode(.original).resizable().aspectRatio(contentMode:.fit).frame(width: 50, height: 50)
            Text("\(temperature)°").font(.system(size: 20,weight: .medium)).foregroundColor(.white)
        }
    }
}
