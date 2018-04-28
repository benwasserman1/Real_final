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


class RecipeViewController: UIViewController {
    
    var stringPassed = ""
    var food = [String]()
    var ingredientsSelected = 0
    var ingredient1 = ""
    var ingredient2 = ""
    var ingredient3 = ""
    var ingredient4 = ""
    var ingredient5 = ""
    
    let headers: HTTPHeaders = [
        "Accept": "application/json"
    ]
    
    // let jsonObject: Any = try JSONSerialization.jsonObject(with: response, options: .allowFragments)

    
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var FoodPassedLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for x in food{
            ingredientsSelected += 1
            print (x)
        }
        if (ingredientsSelected == 1){
            ingredient1 = food[0]
            Alamofire.request("https://api.edamam.com/search?q=\(ingredient1)&app_id=a41b6aa3&app_key=8f85cb98cec0c29c459c46e040a11d35", method: .get, headers: headers).responseJSON { response in
                debugPrint(response)

                }
        }
        else if (ingredientsSelected == 2){
            ingredient1 = food[0]
            ingredient2 = food[1]
            Alamofire.request("https://api.edamam.com/search?q=\(ingredient1)+\(ingredient2)&app_id=a41b6aa3&app_key=8f85cb98cec0c29c459c46e040a11d35", method: .get, headers: headers).responseJSON { response in
                debugPrint(response)
            }
        }
        else if (ingredientsSelected == 3){
            ingredient1 = food[0]
            ingredient2 = food[1]
            ingredient3 = food[2]
            Alamofire.request("https://api.edamam.com/search?q=\(ingredient1)+\(ingredient2)+\(ingredient3)&app_id=a41b6aa3&app_key=8f85cb98cec0c29c459c46e040a11d35", method: .get, headers: headers).responseJSON { response in
                debugPrint(response)
            }
        }
        else if (ingredientsSelected == 4){
            ingredient1 = food[0]
            ingredient2 = food[1]
            ingredient3 = food[2]
            ingredient4 = food[3]
            Alamofire.request("https://api.edamam.com/search?q=\(ingredient1)+\(ingredient2)+\(ingredient3)+\(ingredient4)&app_id=a41b6aa3&app_key=8f85cb98cec0c29c459c46e040a11d35", method: .get, headers: headers).responseJSON { response in
                debugPrint(response)
            }
        }
        else if (ingredientsSelected == 5){
            ingredient1 = food[0]
            ingredient2 = food[1]
            ingredient3 = food[2]
            ingredient4 = food[3]
            ingredient5 = food[5]
            Alamofire.request("https://api.edamam.com/search?q=\(ingredient1)+\(ingredient2)+\(ingredient3)+\(ingredient4)+\(ingredient5)&app_id=a41b6aa3&app_key=8f85cb98cec0c29c459c46e040a11d35", method: .get, headers: headers).responseJSON { response in
                debugPrint(response)
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
