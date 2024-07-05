//
//  ContentView.swift
//  GalaxyGuide
//
//  Created by Connor Hill on 2/20/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingGrid = true
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationView {
            Group {
                if showingGrid {
                    ScrollView {
                        GridView()
                    }
                }
                else {
                    ListView()
                }
            }
            .toolbar {
                Toggle("Change View Style", isOn: $showingGrid)
                    .toggleStyle(.switch)
            }
        }
    }
}

#Preview {
    ContentView()
}
