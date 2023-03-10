//
//  ViewController.swift
//  ProtocolDefaultImplementationSample
//
//  Created by jiwon Yoon on 2023/02/09.
//

import UIKit

class ViewController: UIViewController {
    private lazy var talkButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("Talk", for: .normal)
        button.setTitleColor(.label, for: .normal)
        button.layer.cornerRadius = 8.0
        button.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.3).cgColor
        button.layer.borderWidth = 1.0
        
        button.addTarget(self, action: #selector(didTapTalkButton), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var stackButton: UIButton = {
        let button = UIButton()
        button.setTitle("Stack", for: .normal)
        button.setTitleColor(.label, for: .normal)
        
        button.addTarget(self, action: #selector(didTapStackButton), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
}

private extension ViewController {
    func setupViews() {
        view.backgroundColor = .systemBackground
        [
            talkButton,
            stackButton
        ]
            .forEach {
                view.addSubview($0)
            }
        
        NSLayoutConstraint.activate([
            talkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            talkButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            talkButton.heightAnchor.constraint(equalToConstant: 50.0),
            talkButton.widthAnchor.constraint(equalToConstant: 70.0)
        ])
        
        NSLayoutConstraint.activate([
            stackButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackButton.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
    
    @objc
    func didTapTalkButton() {
        print("Talk")
        
        let kim = Korean(language: "Korean")
        let tom = American(language: "English")
        
        kim.getLanguage()
        tom.getLanguage()
    }
    
    @objc
    func didTapStackButton() {
        print("Stack")
        
        var intStack = Stack<Int>(items: [1, 2, 3])
        intStack.add(item: 4)
        print("int Stack : \(intStack.items)")
        
        var strStack = Stack<String>(items: ["a", "b" , "c" ])
        strStack.add(item: "d")
        
        print("str Stack: \(strStack.items)")
        
    }
}

