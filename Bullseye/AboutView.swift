//
//  AboutView.swift
//  Bullseye
//
//  Created by Sailesh Kasaju on 10/23/19.
//  Copyright © 2019 Sailesh Kasaju. All rights reserved.
//

import SwiftUI

struct AboutView: View {
  let beige = Color.init(red: 255.0 / 255.0, green: 214.0 / 255.0, blue: 179.0 / 255.0)
  struct HeaderStyle: ViewModifier {
    func body(content: Content) -> some View {
      return content
        .foregroundColor(Color.black)
        .font(Font.custom("Arial Rounded MT Bold", size: 30))
        .padding([.bottom, .top], 20)
    }
  }
  
  struct TextStyle: ViewModifier {
    func body(content: Content) -> some View {
      return content
        .foregroundColor(Color.black)
        .font(Font.custom("Arial Rounded MT Bold", size: 16))
        .padding([.leading, .trailing], 60)
        .padding(.bottom, 20)
    }
  }
  
  var body: some View {
    Group {
      VStack {
        Text("🎯 Bullseye 🎯").modifier(HeaderStyle())
        
        Text("This is Bullseye, the game where you can win pints and earn fame by dragging a slider.").modifier(TextStyle()).lineLimit(3)
        
        Text("Your goal is to place the slider as close as possible to the target value. The close you are the more you score.").modifier(TextStyle()).lineLimit(3)
        
        Text("Enjoy!").modifier(TextStyle())
      }
      .background(beige)
    }
    .background(Image("Background"), alignment: .center)
    .navigationBarTitle("About Bullseye")
  }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}
