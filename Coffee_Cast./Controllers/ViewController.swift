//
//  ViewController.swift
//  Coffee_Cast.
//
//  Created by 소범석 on 2022/03/06.
//

import UIKit

class ViewController: UIViewController {

    private lazy var CCLogo: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "CCLogo")
        return img
    }()

    private lazy var color: UILabel = {
        let label = UILabel()
        label.text = "앙 기모찌찌찡"
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    
    lazy var CCLogoCenterConstraint = CCLogo.centerYAnchor.constraint(equalTo: view.centerYAnchor)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(CCLogo)
        CCLogo.translatesAutoresizingMaskIntoConstraints = false
        CCLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        CCLogo.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //        CCLogo.topAnchor.constraint(equalTo: view.topAnchor, constant: 15).isActive = true
//        CCLogo.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 2).isActive = true
//        CCLogo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
//        CCLogo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 8).isActive = true
//        addGestureRecognizer()
        
        
    }

//    func addGestureRecognizer() {
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(moveMeme))
//        CCLogo.addGestureRecognizer(tapGesture)
//    }
//
//    @objc func moveMeme() {
//            UIView.animate(withDuration: 2.0) {
//                self.CCLogoCenterConstraint.constant -= 50
//                self.view.layoutIfNeeded()
//            }
//        }

}

