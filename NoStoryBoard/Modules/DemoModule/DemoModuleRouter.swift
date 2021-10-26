//
//  DemoModuleRouter.swift
//  NoStoryBoard
//
//  Created by Asesoftware on 25/10/21.
//

import Foundation
import UIKit

typealias DemoModuleRouterEntryPoint = DemoModuleViewProtocol & UIViewController

protocol DemoModuleRouterProtocol {

    var entry: DemoModuleRouterEntryPoint? { get set }
    var view: UIViewController? { get set }
    
    static func start() -> DemoModuleRouterProtocol

    func goToNextScene(inputData data: String)
    
}

class DemoModuleRouter: DemoModuleRouterProtocol {

    var entry: DemoModuleRouterEntryPoint?
    var view: UIViewController?


    static func start() -> DemoModuleRouterProtocol {
        
        var router: DemoModuleRouterProtocol = DemoModuleRouter()
        
        // assign VIP
        let view: DemoModuleViewProtocol = DemoModuleViewController()
        var presenter: DemoModulePresenterProtocol = DemoModulePresenter()
        var interactor: DemoModuleInteractorProtocol = DemoModuleInteractor()
        
        presenter.router = router 

        view.presenter = presenter
        view.router = router
        
        interactor.presenter = presenter
        
        presenter.interactor = interactor
        
        router.entry = view as? DemoModuleRouterEntryPoint
        router.view = view as? UIViewController
        
        return router
        
    }
    
    func goToNextScene(inputData data: String) {
    
        let router = SecondModuleRouter.start()
        
        let nextScene = router.view
        
        nextScene?.setInputText(text: data)
        
        view?.show(nextScene as! UIViewController, sender: self)
        
        //view?.navigationController?.pushViewController(nextScene!, animated: true)
    }
    
}
