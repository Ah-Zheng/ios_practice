//
//  ViewController.swift
//  ProjectPractice
//
//  Created by Jerry092383 on 2021/8/3.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    var label: UILabel?
    var button: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        addLabel()
        addButton()
    }
    
    private func addLabel() {
        self.label = UILabel()
        
        guard let label = self.label else {
            return
        }
        
        label.text = "Hello World"
        label.textColor = .white
        label.sizeToFit()
        
        view.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(100)
        }
    }
    
    @objc func buttonClick() {
        guard let label = self.label else {
            return
        }
        
        label.text = "Hello Jerry"
    }
    
    private func addButton() {
        button = UIButton()
        
        guard let button = button else {
            return
        }
        
        button.setTitle("Click Me", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 7, left: 10, bottom: 7, right: 10)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        
        // shadow
        button.layer.shadowColor = CGColor(red: 200, green: 200, blue: 200, alpha: 0.9)
        button.layer.shadowRadius = 5
        
        
        view.addSubview(button)
        
        button.snp.makeConstraints { make in
            guard let label = label else {
                return
            }
            
            make.top.equalTo(label).offset(100)
            make.centerX.equalToSuperview()
        }
    }
}

