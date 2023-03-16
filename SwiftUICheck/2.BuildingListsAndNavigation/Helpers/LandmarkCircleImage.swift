//
//  LandmarkCircleImage.swift
//  SwiftUICheck
//
//  Created by 鈴木健太 on 2023/03/13.
//

import SwiftUI

struct LandmarkCircleImage: View {
    var image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct LandmarkCircleImage_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkCircleImage(image: Image("turtlerock"))
    }
}
