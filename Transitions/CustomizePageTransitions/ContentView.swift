//
//  ContentView.swift
//  Transitions
//
//  Created by Tony Chen on 7/2/2024.
//

import SwiftUI

struct ContentView: View {
    @State var tapped: Bool = false
    @Namespace var nameSpace
    
    var body: some View {
        ZStack {
            if !tapped {
                // From
                VStack(alignment: .leading) {
                    Text("SwiftUI")
                        .font(.title.weight(.bold))
                        .padding()
                        .matchedGeometryEffect(id: "title", in: nameSpace)
                    Text("A video about custom transitions")
                        .font(.title2.weight(.medium))
                        .padding()
                        .matchedGeometryEffect(id: "subTitle", in: nameSpace)
                    Text("Today we will learn how to leverage matched geometry effects.")
                        .font(.title3.weight(.regular))
                        .padding()
                        .matchedGeometryEffect(id: "body", in: nameSpace)
                }
                .frame(width: 300, alignment: .leading)
                .background(Color(.systemPurple))
                .clipShape(RoundedRectangle(cornerRadius: 20.0))
                .shadow(color: Color(.secondaryLabel), radius: 12, x: 0, y: 5)
                .matchedGeometryEffect(id: "card", in: nameSpace)
            } else {
                // To
                VStack(alignment: .leading) {
                    Text("SwiftUI")
                        .font(.title.weight(.bold))
                        .padding()
                        .matchedGeometryEffect(id: "title", in: nameSpace)
                    Text("A video about custom transitions")
                        .font(.title2.weight(.medium))
                        .padding()
                        .matchedGeometryEffect(id: "subTitle", in: nameSpace)
                    Text("Today we will learn how to leverage matched geometry effects.")
                        .font(.title3.weight(.regular))
                        .padding()
                        .matchedGeometryEffect(id: "body", in: nameSpace)
                    Spacer()
                }
                .frame(width: 350, alignment: .leading)
                .background(Color(.systemPurple))
                .clipShape(RoundedRectangle(cornerRadius: 20.0))
                .shadow(color: Color(.secondaryLabel), radius: 12, x: 0, y: 5)
                .matchedGeometryEffect(id: "card", in: nameSpace)
            }
            
        }
        .onTapGesture {
            withAnimation {
                tapped.toggle()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
