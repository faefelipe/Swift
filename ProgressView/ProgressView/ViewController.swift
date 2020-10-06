//
//  ViewController.swift
//  ProgressView
//
//  Created by Felipe Almeida on 06/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGreen
        button.setTitle("Start Task", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 9
        button.layer.masksToBounds = true
        return button
    }()
    
    private let progressView: UIProgressView = {
        let progressView = UIProgressView(progressViewStyle: .bar)
        progressView.trackTintColor = .gray
        progressView.progressTintColor = .systemBlue
        return progressView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.frame = CGRect(x: 0, y: 0, width: 220, height: 55)
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpOutside)
        
    }
    
    @objc private func didTapButton() {
        
    }

}

