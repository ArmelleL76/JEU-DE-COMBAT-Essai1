//
//  Chest.swift
//  projet3 essais
//
//  Created by macmini-Armelle on 07/12/2019.
//  Copyright © 2019 armellelecerf. All rights reserved.
//

import Foundation
class Chest{
//If a chest appears, the random arm will have  a random strenght
var randomStrenght : Int = 10

//Initialisation de la propriété
    init(randomStrenght : Int){
self.randomStrenght = randomStrenght
}
//fonction pour apparition aléatoire du coffre
  func appear() {
        let random = Int.random(in: 1..<7)
        if random % 2 == 0
        { print ("A chest has appeared \n")
         print("The chest contains a random arm of strenght : \(self.armStrenght()) \n")
       
    }
        }
    
  // fonction calculant les dégats aléatoires de l'arme
    func armStrenght() -> Int {
        
     let randomInteger = Int.random(in: 8..<21)
       self.randomStrenght = randomInteger
     return randomStrenght
    }
   
    
    
}
