//
//  SecondaryViewController.swift
//  ProjectPractice
//
//  Created by Jerry092383 on 2021/8/3.
//

import UIKit
import SnapKit

class SecondaryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tableView: UITableView?
    var contact: [String] = ["Jerry", "emily", "Tom"]
    var colors: [String] = ["blue", "red", "green", "yellow"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        addTableView()
    }
    
    private func addTableView() {
        tableView = UITableView(frame: CGRect(), style: .grouped)
        
        guard let tableView = tableView else {
            return
        }
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.right.equalTo(view)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.left.equalTo(view)
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return contact.count
        } else {
            return colors.count
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Contact"
        } else {
            return "Color"
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if indexPath.section == 0 {
            cell.textLabel?.text = contact[indexPath.row]
        } else {
            cell.textLabel?.text = colors[indexPath.row]
        }
        return cell
    }
}
