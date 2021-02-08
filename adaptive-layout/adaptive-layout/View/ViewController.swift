//
//  ViewController.swift
//  adaptive-layout
//
//  Created by Paco on 05/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    let button = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
        setupButtonConstraints()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setupFonts()
        updateConstraints()
    }
    
    var heightConstraint = NSLayoutConstraint()
    var widthConstraint = NSLayoutConstraint()
    var topConstraint = NSLayoutConstraint()
    var centerConstraint = NSLayoutConstraint()
}

private extension ViewController {
    @objc func openWikipedia() {
        let link = "https://en.wikipedia.org/wiki/Black_Square_(painting)"
        guard let url = URL(string: link) else { return }
        UIApplication.shared.open(url)
    }
}

private extension ViewController {
    func setupViews() {
        setupLearnMoreButton()
    }
    
    func setupFonts() {
        titleLabel.font = HelveticaNeue.bold(size: 20)
        subtitleLabel.font = HelveticaNeue.regular(size: 14)
        button.titleLabel?.font = HelveticaNeue.regular(size: 16)
    }
    
    func setupLearnMoreButton() {
        button.setTitle("Learn more", for: .normal)
        button.backgroundColor = .systemPink
        button.layer.cornerRadius = cornerRadius
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(openWikipedia), for: .touchUpInside)
        view.addSubview(button)
    }
}

private extension ViewController {
    func updateConstraints() {
        updateButtonConstraints()
        view.updateAdaptedConstraints()
    }
    
    var buttonSize: CGSize {
        resized(size: CGSize(width: 200, height: 44), basedOn: .height)
    }
    
    var topSpace: CGFloat {
        adapted(dimensionSize: 30, to: .height)
    }
    
    var cornerRadius: CGFloat {
        adapted(dimensionSize: 8, to: dimension)
    }
    
    func setupButtonConstraints() {
        widthConstraint = button.widthAnchor.constraint(equalToConstant: buttonSize.width)
        heightConstraint = button.heightAnchor.constraint(equalToConstant: buttonSize.height)
        topConstraint = button.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: topSpace)
        centerConstraint = button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        NSLayoutConstraint.activate([
            widthConstraint,
            heightConstraint,
            topConstraint,
            centerConstraint
        ])
    }
    
    func updateButtonConstraints() {
        topConstraint.constant = topSpace
        widthConstraint.constant = buttonSize.width
        heightConstraint.constant = buttonSize.width
        button.layer.cornerRadius = cornerRadius
    }
}

