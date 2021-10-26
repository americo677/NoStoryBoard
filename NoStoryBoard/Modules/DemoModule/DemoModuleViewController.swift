//
//  DemoModuleViewController.swift
//  NoStoryBoard
//
//  Created by Asesoftware on 25/10/21.
//

import UIKit

protocol DemoModuleViewProtocol: AnyObject {
    var presenter: DemoModulePresenterProtocol? { get set }
    var router: DemoModuleRouterProtocol? { get set }
}

class DemoModuleViewController: UIViewController, DemoModuleViewProtocol {

    var presenter: DemoModulePresenterProtocol? = DemoModulePresenter()
    
    var router: DemoModuleRouterProtocol?
    
    @IBOutlet weak var inputTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //let demo = UINib(nibName: "DemoModuleViewController", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
        //view.addSubview(demo)
        //demo.frame = self.view.bounds
        //demo.autoresizingMask = [.flexibleHeight, .flexibleWidth]

    }

    @IBAction func sayHiButtonPressed(_ sender: UIButton) {
        print("Button has been pressed")
        print("Text field value: \((inputTextField!.text)!)")
    }
    
    @IBAction func nextSceneButtonPressed(_ sender: UIButton) {
        
        self.router?.goToNextScene(inputData: self.inputTextField.text!)
        
    }

}

