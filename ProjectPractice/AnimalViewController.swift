//
//  AnimalViewController.swift
//  ProjectPractice
//
//  Created by Jerry092383 on 2021/8/6.
//

import UIKit
import SnapKit

class AnimalViewController: UIViewController {
    
    var animalImageView = UIImageView()
    var animalLabel = UILabel()
    var dismissButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        configureAniamlImageView()
        configureAnimalLabel()
        configureDismissButton()
    }
    
    func configureAniamlImageView() {
        view.addSubview(animalImageView)
        
        animalImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalTo(view.snp.width).multipliedBy(0.5)
            make.height.equalTo(view.snp.width).multipliedBy(0.5)
        }
    }
    
    func configureAnimalLabel() {
        view.addSubview(animalLabel)
        
        animalLabel.textAlignment = .center
        animalLabel.textColor = .red
        
        // constraints
        animalLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(animalImageView.snp.bottom).offset(25)
            make.width.equalToSuperview()
            make.height.equalTo(80)
        }
    }
    
    func configureDismissButton() {
        view.addSubview(dismissButton)
        dismissButton.setTitle("Back", for: .normal)
        dismissButton.setTitleColor(.blue, for: .normal)
        dismissButton.backgroundColor = .gray
        dismissButton.layer.cornerRadius = 5
        dismissButton.contentEdgeInsets = UIEdgeInsets(top: 7, left: 10, bottom: 7, right: 10)
        dismissButton.addTarget(self, action: #selector(clickBackButton), for: .touchUpInside)
        
        dismissButton.snp.makeConstraints { make in
            make.bottom.equalTo(animalImageView.snp.top).offset(-25)
            make.centerX.equalToSuperview()
        }
    }
    
    @objc func clickBackButton() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setAnimalData(_ animal: Animal) {
        animalImageView.image = animal.image
        animalLabel.text = animal.name
    }
}
