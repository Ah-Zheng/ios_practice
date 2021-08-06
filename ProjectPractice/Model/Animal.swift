//
//  Animal.swift
//  ProjectPractice
//
//  Created by Jerry092383 on 2021/8/6.
//

import UIKit

struct Animal {
    var image: UIImage!
    var name: String!
}

struct AnimalName {
    static let cat: String = "cat"
    static let dog = "dog"
    static let chicken = "chicken"
    static let fox = "fox"
    static let snail = "snail"
    static let elephant = "elephant"
    static let goat = "goat"
    static let mouse = "mouse"
    static let penguin = "penguin"
    static let rabbit = "rabbit"
    static let monkey = "monkey"
    static let kangaroo = "kangaroo"
}

struct AnimalImages {
    static let cat: UIImage? = UIImage(named: AnimalName.cat)
    static let dog = UIImage(named: AnimalName.dog)
    static let chicken = UIImage(named: AnimalName.chicken)
    static let fox = UIImage(named: AnimalName.fox)
    static let snail = UIImage(named: AnimalName.snail)
    static let elephant = UIImage(named: AnimalName.elephant)
    static let goat = UIImage(named: AnimalName.goat)
    static let mouse = UIImage(named: AnimalName.mouse)
    static let penguin = UIImage(named: AnimalName.penguin)
    static let rabbit = UIImage(named: AnimalName.rabbit)
    static let monkey = UIImage(named: AnimalName.monkey)
    static let kangaroo = UIImage(named: AnimalName.kangaroo)
}
