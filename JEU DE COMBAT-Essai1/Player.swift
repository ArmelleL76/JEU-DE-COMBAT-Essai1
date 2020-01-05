//
//  Player.swift
//  projet3 essais
//
//  Created by macmini-Armelle on 07/12/2019.
//  Copyright © 2019 armellelecerf. All rights reserved.
//

import Foundation
class Player{
    var namePlayer : String
    
    var numberTeam : Int
    
    init (namePlayer : String, numberTeam : Int)
    {
    self.namePlayer = namePlayer
    
    self.numberTeam = numberTeam
        
    }
    func chooseWarrior() {
    print()
    }
    
    func displayTeam ()
    {print("       ---  TEAM : \(numberTeam)  ---   " + "---   PLAYER : \(namePlayer)   ---")
   }
    func play(fighter : Warrior)
    {
        let playerChoice : Int = 0
        
        repeat{
            print("What is your choice?")
            print("1. fight against and cause damages : choose 1 and do return")
            print("2. Increase arm's strenght : choose 2 and do return")
            print("3. Cure your fighter : choose 3 and do return")
            
            if let playerChoice = readLine(){
                switch playerChoice
                {
                case "1" : fighter.receiveDamage(damage : fighter.arm.damage)
                case "2" : fighter.increasePowerArm()
                case "3" : fighter.cureOneself()
                default : print("Choose a number in (1,2,3)")
                print("You choosed \(playerChoice)")
                    
                }
            }
            
        }while playerChoice != 1 && playerChoice != 2 && playerChoice != 3
    }
}
