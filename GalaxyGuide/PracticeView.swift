//
//  PracticeView.swift
//  GalaxyGuide
//
//  Created by Connor Hill on 2/21/24.
//

import SwiftUI

struct PracticeView: View {
    @State private var animationAmount = 0.0
    let imagePassed: String
    var body: some View {
        ScrollView {
            VStack {
                Spacer(minLength: 175)
                Button {
                    withAnimation {
                        animationAmount += 123
                    }
                } label: {
                    Image(imagePassed)
                        .resizable()
                        .scaledToFit()
                        .padding(20)
                        
                }
                .rotation3DEffect(.degrees(animationAmount), axis: (x: 30.0, y: 20.0, z: 22.0))
                
            }
            .frame(maxWidth: .infinity)
            
        }
        .background(.lightBackground)
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    return PracticeView(imagePassed: missions[5].image)
}
