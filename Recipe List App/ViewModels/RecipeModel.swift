//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Olha Lyvyndovych on 24/05/21.
//

import Foundation

class RecipeModel: ObservableObject{
    @Published var recipes = [Recipe]()
    
    init() {
        //Create an instance of data service and get the data
        
        
        self.recipes = DataService.getLocalData() //calling the method on the data type for the case method is static and as we don't need an instance of the data service to get the data
        // Or it chould be this way : to create an instance var dataService = DataService() and to call the method on this instance
        
        //Set the recipes properties
    }
}
