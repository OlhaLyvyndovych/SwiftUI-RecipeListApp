//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by Olha Lyvyndovych on 25/05/21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        
            ScrollView {
                VStack(alignment: .leading) {
                    // MARK: Recipe Image
                    Image(recipe.image)
                        .resizable()
                        .padding(.bottom)
                        .scaledToFill()
                    
                    //MARK: Ingredients
                    VStack(alignment: .leading) {
                        Text("Ingredients")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.bottom, 1.0)
                    }
                    ForEach (recipe.ingredients) {
                        item in
                        Text("∗ " + item.name)
                        //
                    }
                    //MARK: Divider
                    Divider()
                        
                    //MARK: Directions
                    VStack(alignment: .leading, spacing: 2.0) {
                        Text("Directions")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(.vertical, 1.0)
                            
                        ForEach(0..<recipe.directions.count, id:\.self) {
                            index in
                            Text(String(index+1) + ". " + recipe.directions[index])
                                .padding(.vertical, 5.0)
                        }
                    }
                }
                .padding(.horizontal, 15.0)
            }
            .navigationBarTitle(recipe.name)
        }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        // Create a recipe and pass it into the detail view so that we can see a preview
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
