//
//  main.swift
//  den
//
//  Created by Alper Us on 2022-09-20.
//

import Foundation

class Item {
    private var name : String
    private var weight : Int
    
    init(nameInit: String,weightInit: Int){
        self.name = nameInit
        self.weight = weightInit
    }
    
    func getWeight()-> Int{
        return self.weight
    }
    
    func getName()-> String{
        return self.name
    }
}


let key = Item(nameInit: "Key", weightInit: 50)
let battery = Item(nameInit: "Battery", weightInit: 40)
let watch = Item(nameInit: "Watch", weightInit: 100)
let ring = Item(nameInit: "Ring", weightInit: 30)
let iphone = Item(nameInit: "Iphone", weightInit: 300)
let cup = Item(nameInit: "Cup", weightInit: 250)
let notebook = Item(nameInit: "Notebook", weightInit: 150)

var suitcase : [Item] = []
suitcase.append(key)
suitcase.append(battery)
suitcase.append(watch)
suitcase.append(ring)
suitcase.append(iphone)
suitcase.append(cup)
suitcase.append(notebook)


func getAllItemWeight(suitcase :[Item])-> Int{
    var total : Int = 0
    for item in suitcase{
        total = total + item.getWeight()
    }
    return total
}


func getHighestWeightItem(suitcase :[Item])->String{
    
    if let itemWithHighestWeight : Item = suitcase.max(by: {$0.getWeight() < $1.getWeight()}){
        return itemWithHighestWeight.getName()
    }
    return ""
}

func sortedByAscendingly(suitcase : [Item])->[Item]{
    var newList : [Item] = []
    let sortedByWeight = suitcase.sorted(by: { $0.getWeight() < $1.getWeight() } )
    for item in sortedByWeight{
        newList.append(item)
        
    }
    return newList
        
}

print("Total weight of items :", getAllItemWeight(suitcase: suitcase))

print("Highest weight of item is",getHighestWeightItem(suitcase: suitcase))
for item in sortedByAscendingly(suitcase: suitcase){
    print(item.getName())
}


