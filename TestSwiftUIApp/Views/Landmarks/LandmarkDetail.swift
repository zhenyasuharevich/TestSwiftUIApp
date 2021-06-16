//
//  LandmarkDetail.swift
//  TestSwiftUIApp
//
//  Created by Zhenya Suharevich on 11.06.2021.
//

import SwiftUI

struct LandmarkDetail: View {
  @EnvironmentObject var modelData: ModelData
  var landmark: Landmark
  
  var landmarkIndex: Int {
    modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
  }
  
  var body: some View {
    ScrollView {
      MapView(coordinate: landmark.locationCoordinate)
        .frame(height: 300)
        .ignoresSafeArea(edges: .top)
      
      CircleImage(image: landmark.image)
        .padding(.bottom, -130)
        .offset(y: -130)
      
      VStack(alignment: .leading) {
        HStack {
          Text(landmark.name)
            .font(.title)
            .foregroundColor(.primary)
          FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
        }
        HStack {
          Text(landmark.park)
          Spacer()
          Text(landmark.state)
        }
        .font(.subheadline)
        .foregroundColor(.secondary)
        
        Divider()
        
        Text("About \(landmark.name)")
        Text(landmark.description)
        
      }
      .padding()
      
      Spacer()
    }
    .navigationTitle(landmark.name)
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct LandmarkDetail_Previews: PreviewProvider {
  static let modelData = ModelData()
  
  static var previews: some View {
    LandmarkDetail(landmark: ModelData().landmarks[0])
      .environmentObject(modelData)
  }
}
