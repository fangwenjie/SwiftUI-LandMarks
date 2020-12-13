//
//  LandmarkList.swift
//  LandMarks
//
//  Created by 方文杰 on 2020/12/13.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = true

    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            !showFavoritesOnly || landmark.isFavorite
        }
    }

    var body: some View {
        NavigationView {
            List(filteredLandmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandMarkRow(landmark: landmark)
                }
            }
            .navigationTitle("LandMarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
