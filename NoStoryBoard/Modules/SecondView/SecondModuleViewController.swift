//
//  SecondModuleViewController.swift
//  NoStoryBoard
//
//  Created by Asesoftware on 25/10/21.
//

import Foundation
import UIKit

protocol SecondModuleViewProtocol {
    
    var presenter: SecondModulePresenterProtocol? { get set }
    
    var router: SecondModuleRouterProtocol? { get set }

    func setInputText(text: String)
    
}

class SecondModuleViewController: UIViewController, SecondModuleViewProtocol {
    
    var presenter: SecondModulePresenterProtocol?
   
    var router: SecondModuleRouterProtocol?
    
    var inputText: String?
    
    @IBOutlet weak var argumentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let input = inputText else { return }
        
        argumentLabel.text = inputText
    }
    
    func setInputText(text: String) {
        inputText = text
        //argumentLabel.text = text
        print("\(#function): Executed success...")
    }
    
}
