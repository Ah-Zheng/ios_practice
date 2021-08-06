//
//  AnimalTableViewController.swift
//  ProjectPractice
//
//  Created by Jerry092383 on 2021/8/6.
//

import UIKit

class AnimalTableviewController: UITableViewController {
    
    let animal = ["cat", "dog", "snail", "fox"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int { 1 }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { animal.count }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = animal[indexPath.row]
        cell.imageView?.image = UIImage(named: animal[indexPath.row])
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = ThirdViewController()
        vc.goAnimalDetail(animal[indexPath.row])
    }
}
