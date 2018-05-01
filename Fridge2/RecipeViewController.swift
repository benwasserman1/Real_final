//
//  Recipe.swift
//  Fridge2
//
//  Created by Benjamin Wasserman on 4/25/18.
//  Copyright © 2018 Benjamin Wasserman. All rights reserved.
//

import UIKit
import Alamofire
import Foundation

var foodToPassTest = [String]()

class RecipeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var sections = [String]()
    
    var stringPassed = ""
    var food = [String]()
    var ingredientsSelected = 0
    var ingredient1 = ""
    var ingredient2 = ""
    var ingredient3 = ""
    var ingredient4 = ""
    var ingredient5 = ""
    
    // let sections = ["Fruit", "Vegetables", "Fun shit"]
    
    let headers: HTTPHeaders = [
        "Accept": "application/json"
    ]
    
    // let jsonObject: Any = try JSONSerialization.jsonObject(with: response, options: .allowFragments)

    
    // @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var recipe_table_view: UITableView!
    @IBOutlet weak var useAllIngredientsBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        for x in food{
            ingredientsSelected += 1
            print (x)
        }
        foodToPassTest = food
        if (ingredientsSelected == 1){
            ingredient1 = food[0]
            Alamofire.request("http://food2fork.com/api/search?key=fb823e6194220f65401f613eba4246b7&q=\(ingredient1)", method: .get, headers: headers).responseJSON { response in
            
                
                if let json = response.result.value as? [String: Any],
                    let main = json["recipes"] as? [[String:Any]]{
                    let obj = main.first!
                    let recipe_id = obj["recipe_id"]!
                    
                    Alamofire.request("http://food2fork.com/api/get?key=fb823e6194220f65401f613eba4246b7&rId=\(recipe_id)", method: .get).responseJSON { response in
                        
                        if let json = response.result.value as? [String: Any],
                        let recipe_main = json["recipe"] as? [String: Any]{
                            let ingredients = recipe_main["ingredients"]
                            let title = recipe_main["title"]
                            self.sections = (ingredients as! NSArray) as! [String]
                            //print(self.sections.first!)
                            //print(self.sections.count)
                            self.recipeTitle.text = title! as? String
                            self.recipe_table_view.reloadData()
                            self.food = []
                        }
                    }
                }

            }
        }
        else if (ingredientsSelected == 2){
            ingredient1 = food[0]
            ingredient2 = food[1]
            Alamofire.request("http://food2fork.com/api/search?key=fb823e6194220f65401f613eba4246b7&q=\(ingredient1),\(ingredient2)", method: .get, headers: headers).responseJSON { response in
                
                if let json = response.result.value as? [String: Any],
                    let main = json["recipes"] as? [[String:Any]]{
                    let obj = main.first!
                    let recipe_id = obj["recipe_id"]!
                    //print(json)
                    
                    Alamofire.request("http://food2fork.com/api/get?key=fb823e6194220f65401f613eba4246b7&rId=\(recipe_id)", method: .get).responseJSON { response in
                        
                        if let json = response.result.value as? [String: Any],
                            let recipe_main = json["recipe"] as? [String: Any]{
                            let ingredients = recipe_main["ingredients"]
                            let title = recipe_main["title"]
                            self.sections = (ingredients as! NSArray) as! [String]
                            self.recipeTitle.text = title! as? String
                            self.recipe_table_view.reloadData()
                            self.food = []
                        }
                    }
                }

            }
        }
        else if (ingredientsSelected == 3){
            ingredient1 = food[0]
            ingredient2 = food[1]
            ingredient3 = food[2]
            Alamofire.request("http://food2fork.com/api/search?key=fb823e6194220f65401f613eba4246b7&q=\(ingredient1),\(ingredient2),\(ingredient3)", method: .get, headers: headers).responseJSON { response in
                
                if let json = response.result.value as? [String: Any],
                    let main = json["recipes"] as? [[String:Any]]{
                    let obj = main.first!
                    let recipe_id = obj["recipe_id"]!
                    
                    Alamofire.request("http://food2fork.com/api/get?key=fb823e6194220f65401f613eba4246b7&rId=\(recipe_id)", method: .get).responseJSON { response in
                        
                        if let json = response.result.value as? [String: Any],
                            let recipe_main = json["recipe"] as? [String: Any]{
                            let ingredients = recipe_main["ingredients"]
                            let title = recipe_main["title"]
                            self.sections = (ingredients as! NSArray) as! [String]
                            self.recipeTitle.text = title! as? String
                            self.recipe_table_view.reloadData()
                            self.food = []
                        }
                    }
                }
                
            }
        }
        else if (ingredientsSelected == 4){
            ingredient1 = food[0]
            ingredient2 = food[1]
            ingredient3 = food[2]
            ingredient4 = food[3]
            Alamofire.request("http://food2fork.com/api/search?key=fb823e6194220f65401f613eba4246b7&q=\(ingredient1),\(ingredient2),\(ingredient3),\(ingredient4)", method: .get, headers: headers).responseJSON { response in
                
                if let json = response.result.value as? [String: Any],
                    let main = json["recipes"] as? [[String:Any]]{
                    let obj = main.first!
                    let recipe_id = obj["recipe_id"]!
                    
                    Alamofire.request("http://food2fork.com/api/get?key=fb823e6194220f65401f613eba4246b7&rId=\(recipe_id)", method: .get).responseJSON { response in
                        
                        if let json = response.result.value as? [String: Any],
                            let recipe_main = json["recipe"] as? [String: Any]{
                            let ingredients = recipe_main["ingredients"]
                            let title = recipe_main["title"]
                            self.sections = (ingredients as! NSArray) as! [String]
                            self.recipeTitle.text = title! as? String
                            self.recipe_table_view.reloadData()
                            self.food = []
                        }
                    }
                }
                
            }

        }
        else if (ingredientsSelected == 5){
            ingredient1 = food[0]
            ingredient2 = food[1]
            ingredient3 = food[2]
            ingredient4 = food[3]
            ingredient5 = food[5]
            Alamofire.request("http://food2fork.com/api/search?key=fb823e6194220f65401f613eba4246b7&q=\(ingredient1),\(ingredient2),\(ingredient3),\(ingredient4),\(ingredient5)", method: .get, headers: headers).responseJSON { response in
                
                if let json = response.result.value as? [String: Any],
                    let main = json["recipes"] as? [[String:Any]]{
                    let obj = main.first!
                    let recipe_id = obj["recipe_id"]!
                    
                    Alamofire.request("http://food2fork.com/api/get?key=fb823e6194220f65401f613eba4246b7&rId=\(recipe_id)", method: .get).responseJSON { response in
                        
                        if let json = response.result.value as? [String: Any],
                            let recipe_main = json["recipe"] as? [String: Any]{
                            let ingredients = recipe_main["ingredients"]
                            let title = recipe_main["title"]
                            self.sections = (ingredients as! NSArray) as! [String]
                            self.recipeTitle.text = title! as? String
                            self.recipe_table_view.reloadData()
                            self.food = []
                        }
                    }
                }
                
            }
        }
    }
    
    
    func tableView(_ recipe_table_view: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func numberOfSections(in recipe_table_view: UITableView) -> Int {
        //print (self.sections.count)
        // request()
        return sections.count
    }
    
    func tableView(_ recipe_table_view: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an object of the dynamic cell “PlainCell”
        let cell = recipe_table_view.dequeueReusableCell(withIdentifier: "PlainCell", for: indexPath)
        // Fruit Section
        cell.textLabel?.text = sections[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func useAllIngredientsBtnPressed(_ sender: Any) {
        print("Hello")
        let myVC = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        navigationController?.pushViewController(myVC, animated: true)
        myVC.food = foodToPassTest
    }
    
    
    
}
