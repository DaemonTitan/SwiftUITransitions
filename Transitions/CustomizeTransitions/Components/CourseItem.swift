//
//  CourseItem.swift
//  Transitions
//
//  Created by Tony Chen on 4/6/2024.
//

import SwiftUI

struct CourseItem: View {
    var namespace: Namespace.ID
    @Binding var show: Bool
    
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .leading, spacing: 12) {
                Text("SwiftUI")
                    .font(.largeTitle.weight(.bold))
                    .matchedGeometryEffect(id: "title", in: namespace)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Lorem ipsum dolor sit amet")
                    .font(.footnote.weight(.semibold))
                    .matchedGeometryEffect(id: "subtitle", in: namespace)
                Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo")
                    .font(.footnote)
                    .matchedGeometryEffect(id: "text", in: namespace)
            }
            .padding(20)
            .background(
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .blur(radius: 30)
                    .matchedGeometryEffect(id: "blur", in: namespace)
            )

        }
        .foregroundStyle(.white)
        .background(
            Image("image1")
                .resizable()
                .aspectRatio(contentMode: .fit)
            .matchedGeometryEffect(id: "image", in: namespace)
        )
        .background(
            Image("background1")
                .resizable()
            .matchedGeometryEffect(id: "background", in: namespace)
        )
        .mask {
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .matchedGeometryEffect(id: "mask", in: namespace)
        }
        .frame(height: 300)
        .padding(20)
    }
}

#Preview {
    @Namespace var namespace
    return CourseItem(namespace: namespace, show: .constant(true))
}
