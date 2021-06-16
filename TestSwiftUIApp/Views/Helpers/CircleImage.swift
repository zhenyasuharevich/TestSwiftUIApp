//
//  CircleImage.swift
//  TestSwiftUIApp
//
//  Created by Zhenya Suharevich on 11.06.2021.
//

import SwiftUI

struct CircleImage: View {
  var image: Image
  
  var body: some View {
    VStack {
      image
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 7)
    }
  }
}

struct CircleImage_Previews: PreviewProvider {
  static var previews: some View {
    CircleImage(image: Image("turtlerock"))
  }
}
