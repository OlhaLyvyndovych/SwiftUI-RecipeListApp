//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Olha Lyvyndovych on 28/05/21.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView {
            Text("Featured")
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured View")
                    }
                }
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
