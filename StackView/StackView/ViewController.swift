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
        createStackView()
    }
    
    func createStackView() {
    
        let imageView = UIImageView()
        imageView.backgroundColor = .systemGreen
        imageView.image = UIImage(systemName: "bell")
        imageView.contentMode = .scaleAspectFit
        
        let label = UILabel()
        label.backgroundColor = .systemBlue
        label.text = "Hello World"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 21, weight: .bold)
        
        let label2 = UILabel()
        label2.backgroundColor = .systemPink
        label2.text = "Another Label"
        label2.textAlignment = .center
        label2.font = .systemFont(ofSize: 21, weight: .bold)
        
        let stackView = UIStackView(arrangedSubviews: [imageView, label, label2])
        stackView.frame = view.bounds
        stackView.backgroundColor = .systemYellow
    
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        
        view.addSubview(stackView)
    }
}
