//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Вячеслав Квашнин on 27.06.2022.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        title = "Home"
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemGray5
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Tap Me", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }

    @objc func didTapButton() {
        coordinator?.eventOccurred(with: .buttonTapped)
    }
}

