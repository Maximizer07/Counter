//
//  ViewController.swift
//  Counter
//
//  Created by ИИТ on 06.03.2021.
//

import UIKit

class ViewController: UIViewController {

    private var label = UILabel()
    private var tapButon = UIButton()
    private var resetButton = UIButton()
    private var counter = 0 {
        didSet{
            label.text=counter.description
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Counter"
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: resetButton)
        resetButton.setTitle("Reset",for: .normal)
        resetButton.addTarget(self, action: #selector(resetCounter), for: .touchUpInside)
        resetButton.setTitleColor(.blue, for: .normal)
        view.backgroundColor = .cyan
        view.addSubview(label)
        view.addSubview(tapButon)
        label.translatesAutoresizingMaskIntoConstraints = false
        tapButon.translatesAutoresizingMaskIntoConstraints = false
        label.font=UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.medium)
        label.text = counter.description
        label.textColor = .blue
        tapButon.setTitle("TAP", for: .normal)
        tapButon.backgroundColor = .blue
        tapButon.setTitleColor(.white, for: .normal)
        tapButon.layer.cornerRadius = 8
        tapButon.contentEdgeInsets = UIEdgeInsets (top: 5, left: 10, bottom: 5, right: 10)
        tapButon.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.semibold)
        tapButon.addTarget(self, action: #selector(tapFunction), for: .touchUpInside)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            tapButon.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tapButon.centerYAnchor.constraint(equalTo: label.centerYAnchor,constant: 50)
        ])
    }
    @objc func tapFunction(){
        counter+=1
    }
    @objc func resetCounter(){
        counter=0
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

}

