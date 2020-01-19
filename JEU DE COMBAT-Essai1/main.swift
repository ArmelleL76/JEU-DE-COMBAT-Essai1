//
// //
//  main.swift
//  projet3 essais
//
//  Created by macmini-Armelle on 30/11/2019.
//  Copyright © 2019 armellelecerf. All rights reserved.
//

import Foundation
//Présentation du jeu
print("*****************Welcome to French Game factory!********************")
print("")
print("You will test the ANTIC FIGHT GAME: ")
print("")
print("Two players choose three fighters to make a warrior's team")
print("We'll have then two teams.Each player choose a fighter in his own team \nto meet another fighter in the other team.")
print("Fighters fight together or choose to improve their arms or to gain more \nlives")
print("At the end, the winner is the player with almost one fighter alive")
print("")
print("Here is the list of possible fighters : \n  ")
print("Team1: Viking1, Gladiator1 and Knight1")
print("******************")
print("Team2: Viking2, Gladiator2 and Knight2")
print("******************")
print("")
print ("Here is a list of optionnal names for your warriors :   \n")
print("Vikings'names : Sigrid, Thor, Bjorn, Odin, Ragnar, Magnum... \n")
print("Gladiators'names : Lucius, Marcus, Titus, Sextus, Quintus, Servius...\n")
print("Knights'names : Gauvain, Arthur, Perceval, Lancelot, Tristan...\n")

print("First player, give your name and do return: ")
let firstPlayer = Player(namePlayer: "", numberTeam :1)
 if let name1 = readLine(){
 print("bienvenue : \(name1)")
    firstPlayer.namePlayer = name1
 
}

print("Second player, give your name and do return")
let secondPlayer = Player(namePlayer: "", numberTeam : 2)
if let name2 = readLine(){
print("bienvenue : \(name2)")
    secondPlayer.namePlayer = name2
}

//Players must give names to their fighters
print("First Player, give a name to your fighters in this order and do return after each name : \n")
print("1. Viking1,  2. Gladiator1,  3.Knight1")
let viking1 = Warrior(fighterName :"", fighter : .viking)
if let nameViking1 = readLine(){
print("bienvenue : \(nameViking1)")
    viking1.fighterName = nameViking1}
let gladiator1 = Warrior(fighterName :"", fighter : .gladiator)
    if let nameGladiator1 = readLine(){
        print("bienvenue : \(nameGladiator1)")
        gladiator1.fighterName = nameGladiator1}
 let knight1 = Warrior(fighterName :"", fighter : .knight)
 if let nameKnight1 = readLine(){
     print("bienvenue : \(nameKnight1)")
    knight1.fighterName = nameKnight1}


print("Second Player, give names to your fighters in this order and do return after each name: \n")
print("1. Viking2,  2. Gladiator2,  3.Knight2")
let viking2 = Warrior(fighterName :"", fighter : .viking)
if let nameViking2 = readLine(){
print("bienvenue : \(nameViking2)")
    viking2.fighterName = nameViking2}
    let gladiator2 = Warrior(fighterName :"", fighter : .gladiator)
    if let nameGladiator2 = readLine(){
print("bienvenue : \(nameGladiator2)")
    gladiator2.fighterName = nameGladiator2}



    let knight2 = Warrior(fighterName :"", fighter : .knight)
    if let nameKnight2 = readLine(){
print("bienvenue : \(nameKnight2)")
    knight2.fighterName = nameKnight2}
    
print("\(firstPlayer.displayTeam())")
print("Viking1  : \(viking1.fighterName) ---- life : 90  ---- Arm : Ax ---- powerArm : 20 ---\n")
print("Gladiator1  : \(gladiator1.fighterName) ---- life : 110  ---- Arm : Broadsword ---- powerArm : 15 ---\n")
print("Knight1  : \(knight1.fighterName) ---- Life : 80  ---- Arm : Sword ---- powerArm : 12 ---\n")

print("\(secondPlayer.displayTeam())")
print("Viking 2 : \(viking2.fighterName) ---- Life : 90  ---- Arm : Ax ---- powerArm : 20 ---\n")
print("Gladiator2  : \(gladiator2.fighterName) ---- Life : 110  ---- Arm : Broadsword ---- powerArm : 15 ---\n")
print("Knight2  : \(knight2.fighterName) ---- Life : 80  ---- Arm : Sword ---- powerArm : 12 ---\n")

//Instanciation des guerriers

let vikingOne = Warrior(fighterName : viking1.fighterName , fighter : .viking)
let gladiatorOne = Warrior(fighterName : gladiator1.fighterName , fighter : .gladiator)
let knightOne = Warrior(fighterName : knight1.fighterName , fighter : .knight)
let vikingTwo = Warrior(fighterName : viking2.fighterName , fighter : .viking)
let gladiatorTwo = Warrior(fighterName : gladiator2.fighterName , fighter : .gladiator)
let knightTwo = Warrior(fighterName : knight2.fighterName , fighter : .knight)

//Formation des équipes

var warriorTeam1 = [vikingOne, gladiatorOne, knightOne]
var warriorTeam2 = [vikingTwo, gladiatorTwo, knightTwo]

//Each player choose a fighter to play
var player1Choice : String = ""
var player2Choice : String = ""
repeat{
print("Player1, choose your warrior")
    print("1. \(vikingOne.fighterName) has a life of \(vikingOne.life)")
    print("2.\(gladiatorOne.fighterName) has a life of \(gladiatorOne.life)")
    print("3.\(knightOne.fighterName) has a life of \(knightOne.life)")
    if let choice1 = readLine(){
  print("You choosed \(choice1)")
 player1Choice = choice1
    }
} while player1Choice != "1" && player1Choice != "2" && player1Choice != "3"
repeat{
print("Player2, choose your warrior")
    print("1. \(vikingTwo.fighterName) has a life of \(vikingTwo.life)")
    print("2.\(gladiatorTwo.fighterName) has a life of \(gladiatorTwo.life)")
    print("3.\(knightTwo.fighterName)  has a life of \(knightTwo.life)")
    if let choice2 = readLine(){
  print("You choosed \(choice2)")
        player2Choice = choice2
    }
} while player2Choice != "1" && player2Choice != "2" && player2Choice != "3"

//We precise the warrior's Type of each player'choice. We use the WarriorType enumeration
var warriorType1 = WarriorType.viking

switch player1Choice {
case "1": warriorType1 = .viking
case "2" : warriorType1 = .gladiator
case "3" : warriorType1 = .knight
default : break
}
var warriorType2 = WarriorType.viking
switch player2Choice {
case "1" : warriorType2 = .viking
case "2" : warriorType2 = .gladiator
case "3" : warriorType2 = .knight
default : break
}

print ("")
//We create and display the fighters player1 and player2 have choosen
var fighterA = Warrior(fighterName : "\(player1Choice)", fighter : warriorType1)
var fighterB = Warrior(fighterName : "\(player2Choice)", fighter : warriorType2)
print("\(fighterA.fighterName).....\(fighterA.fighter) will be opposed to : \(fighterB.fighterName).....\(fighterB.fighter)")

//A chest will appear or not
var chest = Chest(randomStrenght : 10)
var bool : Bool = false
if  bool == chest.appear(){
    let damage : Int = chest.armStrenght()
    print("The chest contains a random Arm of strenght : \(damage)\n)")
    
    
 //The opportunity to exchange arms is given to one player, choosen randomly
    let number = Int.random(in: 1...2)
    
    print("Player number \(number), Do you want to exchange your fighter's arm with the random one?")
}


//We choose the action
firstPlayer.play(fighter : fighterA)
secondPlayer.play(fighter : fighterB)




// We look for the winner

