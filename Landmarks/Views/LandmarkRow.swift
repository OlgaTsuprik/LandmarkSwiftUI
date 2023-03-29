//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Ольга Цуприк on 28.03.23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50.0, height: 50)
                .clipShape(Circle())

            Text(landmark.name)

            Spacer()
//            if landmark.isFavorive {
//                Image(systemName: "star")
//                    .foregroundColor(.yellow)
//            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
