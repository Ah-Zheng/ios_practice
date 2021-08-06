//
//  ThirdViewController.swift
//  ProjectPractice
//
//  Created by Jerry092383 on 2021/8/6.
//

import UIKit
import SnapKit

class ThirdViewController: UIViewController {
    
    var tableView = UITableView()
    var animal: [Animal] = []
    
    struct cells {
        static let cell = "cell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        animal = self.fetchData()
        configureTableView()
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        
        // set delegate
        setTableViewDelegates()
        
        // set row height
        tableView.rowHeight = 100
        
        // register cells
        tableView.register(AnimalTableViewCell.self, forCellReuseIdentifier: cells.cell)
        
        // set constraints
        tableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ThirdViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { animal.count }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cells.cell) as! AnimalTableViewCell
        let animal = self.animal[indexPath.row]
        cell.set(animal)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = AnimalViewController()
        vc.setAnimalData(animal[indexPath.row])
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true, completion: nil)
    }
}

extension ThirdViewController {
    func fetchData() -> [Animal] {
        let animal1 = Animal(image: AnimalImages.cat, name: AnimalName.cat)
        let animal2 = Animal(image: AnimalImages.dog, name: AnimalName.dog)
        let animal3 = Animal(image: AnimalImages.fox, name: AnimalName.fox)
        let animal4 = Animal(image: AnimalImages.chicken, name: AnimalName.chicken)
        let animal5 = Animal(image: AnimalImages.elephant, name: AnimalName.elephant)
        let animal6 = Animal(image: AnimalImages.rabbit, name: AnimalName.rabbit)
        let animal7 = Animal(image: AnimalImages.penguin, name: AnimalName.penguin)
        let animal8 = Animal(image: AnimalImages.kangaroo, name: AnimalName.kangaroo)
        let animal9 = Animal(image: AnimalImages.mouse, name: AnimalName.mouse)
        let animal10 = Animal(image: AnimalImages.monkey, name: AnimalName.monkey)
        let animal11 = Animal(image: AnimalImages.snail, name: AnimalName.snail)
        let animal12 = Animal(image: AnimalImages.goat, name: AnimalName.goat)
        
        return [animal1, animal2, animal3, animal4, animal5, animal6, animal7, animal8, animal9, animal10, animal11, animal12]
    }
}
