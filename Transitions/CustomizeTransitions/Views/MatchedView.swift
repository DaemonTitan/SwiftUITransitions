//
//  MatchedView.swift
//  Transitions
//
//  Created by Tony Chen on 4/6/2024.
//

import SwiftUI

struct MatchedView: View {
    @Namespace var namespace
    @State var show = false
    
    var body: some View {
        ZStack {
            Image("background3")
                .resizable()
                .ignoresSafeArea()
            
            ScrollView {
                FeatureItem()
                Text("Courses".uppercased())
                    .font(.footnote.weight(.semibold))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                 
                if !show {
                    CourseItem(namespace: namespace, show: $show)
                        .onTapGesture {
                            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                                show.toggle()
                            }
                        }
                }
            }
            if show {
                CourseView(namespace: namespace, show: $show)
            }
        }

    }
}

#Preview {
    MatchedView()
}
