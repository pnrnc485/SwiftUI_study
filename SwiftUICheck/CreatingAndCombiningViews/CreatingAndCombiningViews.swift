//
//  CreatingAndCombiningViews.swift
//  SwiftUICheck
//
//  Created by 鈴木健太 on 2023/03/13.
//

import SwiftUI

// MEMO: Creating and Combining Views
// https://developer.apple.com/tutorials/swiftui/creating-and-combining-views
struct CreatingAndCombiningViews: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)

                HStack {
                    Text("Josha Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
        }
    }
}


struct CreatingAndCombiningViews_Previews: PreviewProvider {
    static var previews: some View {
        CreatingAndCombiningViews()
    }
}
