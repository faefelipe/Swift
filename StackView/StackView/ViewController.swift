//
//  ViewController.swift
//  StackView
//
//  Created by Felipe Almeida on 06/10/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func createStackView() {
    
        let imageView = UIImageView()
        imageView.backgroundColor = .systemGreen
        imageView.image = UIImage(systemName: "bell")
        imageView.contentMode = .scaleAspectFit
        imageView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: view.frame.size.height/3).isActive = true
        
        let label = UILabel()
        label.text = "Hello World"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 21, weight: .bold)
        label.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        label.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let stackView = UIStackView(arrangedSubviews: [imageView], label)
        stackView.frame = view.bounds
        view.addSubview(stackView)
    }
}
