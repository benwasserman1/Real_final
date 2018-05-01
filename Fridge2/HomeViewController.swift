//
//  ViewController.swift
//  Fridge2
//
//  Created by Benjamin Wasserman on 4/25/18.
//  Copyright © 2018 Benjamin Wasserman. All rights reserved.
//

import UIKit
import Alamofire

class HomeViewController: UIViewController {
    
    
    var foodToPass = [String]()
    var food = [String]()

    @IBOutlet weak var deleteFoodBtn: UIButton!
    @IBOutlet weak var getRecipe: UIButton!
    @IBOutlet weak var TopRightFoodBtn: UIButton!
    @IBOutlet weak var MiddleRightFoodBtn: UIButton!
    @IBOutlet weak var BottomLeftFoodBtn: UIButton!
    @IBOutlet weak var BottomRightFoodBtn: UIButton!
    @IBOutlet weak var TopLeftFoodBtn: UIButton!
    @IBOutlet weak var MiddleLeftFoodBtn: UIButton!
    
    
    @IBAction func getRecipeBtnPressed(_ sender: AnyObject) {
        if (TopLeftFoodBtn.isSelected == true){
            foodToPass.append(TopLeftFoodBtn.currentTitle!)
        }
        if (TopRightFoodBtn.isSelected == true){
            foodToPass.append(TopRightFoodBtn.currentTitle!)
        }
        if (MiddleLeftFoodBtn.isSelected == true){
            foodToPass.append(MiddleLeftFoodBtn.currentTitle!)
        }
        if (MiddleRightFoodBtn.isSelected == true){
            foodToPass.append(MiddleRightFoodBtn.currentTitle!)
        }
        if (BottomLeftFoodBtn.isSelected == true){
            foodToPass.append(BottomLeftFoodBtn.currentTitle!)
        }
        if (BottomRightFoodBtn.isSelected == true){
            foodToPass.append(BottomRightFoodBtn.currentTitle!)
        }
        let myVC = storyboard?.instantiateViewController(withIdentifier: "RecipeViewController") as! RecipeViewController
        myVC.food = foodToPass
        navigationController?.pushViewController(myVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(TopLeftFoodBtn.isSelected)
        for x in food {
            print ("Here")
            print(x)
            if (x == TopRightFoodBtn.currentTitle){
                TopRightFoodBtn.setTitle("", for: .normal)
            }
            else if (x == TopLeftFoodBtn.currentTitle){
                TopLeftFoodBtn.setTitle("", for: .normal)
            }
            else if (x == MiddleLeftFoodBtn.currentTitle){
                MiddleLeftFoodBtn.setTitle("", for: .normal)
            }
            else if (x == MiddleRightFoodBtn.currentTitle){
                MiddleRightFoodBtn.setTitle("", for: .normal)
            }
            else if (x == BottomLeftFoodBtn.currentTitle){
                BottomLeftFoodBtn.setTitle("", for: .normal)
            }
            else if (x == BottomRightFoodBtn.currentTitle){
                BottomRightFoodBtn.setTitle("", for: .normal)
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func TopRightFoodBtnPressed(_ sender: Any) {
        if (TopRightFoodBtn.isSelected == true) {
            TopRightFoodBtn.isSelected = false
        }
        else {
            TopRightFoodBtn.isSelected = true
        }
    }
    
   
    @IBAction func TopLeftFoodBtnPressed(_ sender: Any) {
        if (TopLeftFoodBtn.isSelected == true) {
            TopLeftFoodBtn.isSelected = false
        }
        else {
            TopLeftFoodBtn.isSelected = true
        }
    }
    
    @IBAction func MiddleLeftFoodBtnPressed(_ sender: Any) {
        if (MiddleLeftFoodBtn.isSelected == true) {
            MiddleLeftFoodBtn.isSelected = false
        }
        else {
            MiddleLeftFoodBtn.isSelected = true
        }
    }
    
    @IBAction func MiddleRightFoodBtnPressed(_ sender: Any) {
        if (MiddleRightFoodBtn.isSelected == true) {
            MiddleRightFoodBtn.isSelected = false
        }
        else {
            MiddleRightFoodBtn.isSelected = true
        }
    }
    
    @IBAction func BottomLeftFoodBtnPressed(_ sender: Any) {
        if (BottomLeftFoodBtn.isSelected == true) {
            BottomLeftFoodBtn.isSelected = false
        }
        else {
            BottomLeftFoodBtn.isSelected = true
        }
    }
    
    @IBAction func BottomRightFoodBtnPressed(_ sender: Any) {
        if (BottomRightFoodBtn.isSelected == true) {
            BottomRightFoodBtn.isSelected = false
        }
        else {
            BottomRightFoodBtn.isSelected = true
        }
    }
    
    @IBAction func deleteFoodBtnPressed(_ sender: Any) {
        if (TopRightFoodBtn.isSelected == true){
            TopRightFoodBtn.setTitle("", for: .normal)
        }
        if (TopLeftFoodBtn.isSelected == true){
            TopLeftFoodBtn.setTitle("", for: .normal)
        }
        if (MiddleLeftFoodBtn.isSelected == true){
            MiddleLeftFoodBtn.setTitle("", for: .normal)
        }
        if (MiddleRightFoodBtn.isSelected == true){
            MiddleRightFoodBtn.setTitle("", for: .normal)
        }
        if (BottomLeftFoodBtn.isSelected == true){
            BottomLeftFoodBtn.setTitle("", for: .normal)
        }
        if (BottomRightFoodBtn.isSelected == true){
            BottomRightFoodBtn.setTitle("", for: .normal)
        }
    }
    
    
    
}

