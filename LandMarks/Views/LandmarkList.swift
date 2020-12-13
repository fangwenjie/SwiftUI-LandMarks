//
//  LandmarkList.swift
//  LandMarks
//
//  Created by 方文杰 on 2020/12/13.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//        List{
//            LandMarkRow(landmark: landmarks[0])
//            LandMarkRow(landmark: landmarks[1])
//            LandMarkRow(landmark: landmarks[2])
//            LandMarkRow(landmark: landmarks[3])
//        }

        NavigationView {
            List(landmarks) { landmark in
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
