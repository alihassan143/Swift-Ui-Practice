//
//  ContentView.swift
//  SwiftPractice
//
//  Created by Mac on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var night=false
    
    var body: some View {
        ZStack{
            MainAppBackground(topcolor: night ? .black: .blue, botomColor:night ? .yellow : .gray)
            VStack{
                Text("Lahore,Pakistan").font(.system(size: 32,weight:.bold,design: .default)).foregroundColor(.white).padding()
                VStack(spacing:10){
                    Image(systemName: "cloud.sun.fill").renderingMode(.original).resizable().aspectRatio(contentMode:.fit).frame(width: 180, height: 180)
                    Text("76°").font(.system(size: 70,weight: .medium)).foregroundColor(.white)
                }.padding(.bottom,40)
                ScrollView(.horizontal,showsIndicators: false){
                HStack(spacing:20){
                WeatherdayView(dayofweek: "Tue", imagename: "cloud.sun.fill", temperature: 67)
                    WeatherdayView(dayofweek: "Wed", imagename: "cloud.rain.fill", temperature: 67)
                    WeatherdayView(dayofweek: "Thu", imagename: "cloud.snow.fill", temperature: 67)
                    WeatherdayView(dayofweek: "Fri", imagename: "cloud.bolt.fill", temperature: 67)
                    WeatherdayView(dayofweek: "Sat", imagename: "sun.max.fill", temperature: 67)
                    WeatherdayView(dayofweek: "Sun", imagename: "cloud.fog.fill", temperature: 67)
                    WeatherdayView(dayofweek: "Mon", imagename: "cloud.sun.fill", temperature: 67)
                   
                }
                }
                Spacer()
                Button{
                    night.toggle()
                }label: {
                    ButtonView(buttonColor:night ? .white : .yellow)
                }
                Spacer()
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct MainAppBackground: View {
    var topcolor:Color
    var botomColor:Color
    var body: some View {
        LinearGradient(colors: [topcolor,botomColor], startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
    }
}


