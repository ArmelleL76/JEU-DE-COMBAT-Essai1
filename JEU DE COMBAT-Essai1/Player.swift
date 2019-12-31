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
        var playerChoice : Int
        
        repeat{
            print("What is your choice?")
            print("1. fight against and cause damages : choose 1 and do return")
            print("2. Increase arm's strenght : choose 2 and do return")
            print("3. Cure your fighter : choose 3 and do return")
            print("Exchange your arm with the random  one : choose 4 and do return")
            if let playerChoice = readLine(){
                switch playerChoice
                {
                case "1" : fighter.receiveDamage(damage : fighter.arm.damage)
                case "2" : fighter.increasePowerArm()
                case "3" : fighter.cureOneself()
                case "4": fighter.exchangeArm(randomArm : fighter.arm)
                default : print("Choose an integer in (1,2,3,4)")
                print("You choosed \(playerChoice)")
                    
                }
            }
            
        }while playerChoice != 1 && playerChoice != 2 && playerChoice != 3 && playerChoice != 4
    }
}
