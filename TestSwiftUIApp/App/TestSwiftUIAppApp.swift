//
//  TestSwiftUIAppApp.swift
//  TestSwiftUIApp
//
//  Created by Zhenya Suharevich on 11.06.2021.
//

import SwiftUI

@main
struct TestSwiftUIAppApp: App {
  @StateObject private var modelData = ModelData()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(modelData)
    }
  }
}
