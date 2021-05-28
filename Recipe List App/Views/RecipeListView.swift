//
//  ContentView.swift
//  Recipe List App
//
//  Created by Olha Lyvyndovych on 24/05/21.
//

import SwiftUI

struct RecipeListView: View {
    
    //Reference the view model
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        NavigationView {
            List(model.recipes) {
                r in
                
                NavigationLink(
                    destination: RecipeDetailView(recipe:r),
                    label: {
                        
                        //MARK: Row items
                        HStack(spacing: 20.0) {
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipped()
                                .cornerRadius(5)
                            Text(r.name)
                        }
                    }
                  )
                }
            .navigationTitle("All recipes")
            }
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
