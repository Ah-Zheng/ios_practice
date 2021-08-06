//
//  AnimalTableViewCell.swift
//  ProjectPractice
//
//  Created by Jerry092383 on 2021/8/6.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {
    
    var animalImageView = UIImageView()
    var animalLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(animalImageView)
        addSubview(animalLabel)
        
        configureImageView()
        configureTitleLabel()
        setImageConstraints()
        setTitleLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(_ animal: Animal) {
        animalImageView.image = animal.image
        animalLabel.text = animal.name
    }
    
    func configureImageView() {
        animalImageView.layer.cornerRadius = 10
        animalImageView.clipsToBounds = true
    }
    
    func configureTitleLabel() {
        animalLabel.numberOfLines = 0
        animalLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints() {
        animalImageView.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.leading.equalTo(self).offset(12)
            make.height.equalTo(80)
            make.width.equalTo(animalImageView.snp.height).multipliedBy(16/9)
        }
    }
    
    func setTitleLabel() {
        animalLabel.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.leading.equalTo(animalImageView.snp.trailing).offset(20)
            make.trailing.equalTo(self).offset(12)
            make.height.equalTo(80)
        }
    }
}
