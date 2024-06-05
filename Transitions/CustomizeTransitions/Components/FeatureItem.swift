//
//  FeatureItem.swift
//  Transitions
//
//  Created by Tony Chen on 4/6/2024.
//

import SwiftUI

struct FeatureItem: View {
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .leading, spacing: 12) {
                Text("Lorem ipsum dolor ")
                    .font(.largeTitle.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("consectetuer adipiscing elit.")
                    .font(.footnote.weight(.semibold))
                Text("Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes.")
                    .font(.footnote)
            }
            .padding(20)
            .background(
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .blur(radius: 30)
            )
        }
        .foregroundStyle(.white)
        .background(
            Image("image5")
                .resizable()
                .aspectRatio(contentMode: .fit)
        )
        .background(
            Image("background1")
                .resizable()
        )
        .mask {
            RoundedRectangle(cornerRadius: 30, style: .continuous)
        }
        .frame(height: 300)
        .padding(20)
    }
}

#Preview {
    FeatureItem()
}
