//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ольга Цуприк on 28.03.23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
            LandmarkList()
    }
}

//struct LandmarkList_Previews: PreviewProvider {
//    static var previews: some View {
//        ForEach(["iPhone 4s", "iPhone 8", "iPhone14"], id: \.self) { device in
//            LandmarkList().previewDevice(PreviewDevice(rawValue: device))
//                .previewDisplayName(device)
//
//        }
//    }
//}
