//
//  ContentView.swift
//  Bullseye
//
//  Created by Sailesh Kasaju on 10/22/19.
//  Copyright © 2019 Sailesh Kasaju. All rights reserved.
//

import SwiftUI

struct ContentView: View {

  @State var alertIsVisible: Bool = false
  
  @State var sliderValue: Double = 50.0
  
  var body: some View {
    VStack {

      Spacer()
      
      HStack {
        Text("Put the bullseye as close as you can to:")
          .fontWeight(.semibold)
          .foregroundColor(Color.green)
        Text("100")
      }

      Spacer()
      
      HStack {
        Text(/*@START_MENU_TOKEN@*/"1"/*@END_MENU_TOKEN@*/)
        Slider(value: self.$sliderValue, in: 1...100)
        Text(/*@START_MENU_TOKEN@*/"100"/*@END_MENU_TOKEN@*/)
      }
      
      Spacer()
      
      Button(action: {
        print("Button pressed!")
        self.alertIsVisible = true
      }){
        Text("Hit Me!")
      }
      .alert(isPresented: $alertIsVisible) { () -> Alert in
        return Alert(title: Text("Hello there"), message: Text("This is my first alert"), dismissButton: .default(Text("Awesome!")))
      }
      
      Spacer()
      
      HStack {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
          Text("♲ Start over")
        }
        Spacer()
        Text("Score")
        Text("99999")
        Spacer()
        Text("Round")
        Text("99999")
        Spacer()
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
          Text("⚠︎ Info")
        }
      }
      .padding(.bottom, 20)
      
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView().previewLayout(.fixed(width: 896, height: 414))
  }
}
