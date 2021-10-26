//
//  SecondModuleRouter.swift
//  NoStoryBoard
//
//  Created by Asesoftware on 25/10/21.
//

import Foundation
import UIKit

typealias SecondModuleRouterEntryPoint = SecondModuleViewProtocol & UIViewController

protocol SecondModuleRouterProtocol {
    
    var entry: SecondModuleRouterEntryPoint? { get set }
    var view: SecondModuleViewProtocol? { get set }
    
    static func start() -> SecondModuleRouterProtocol

}

class SecondModuleRouter: SecondModuleRouterProtocol {
    
    var entry: SecondModuleRouterEntryPoint?
    var view: SecondModuleViewProtocol?
    
    static func start() -> SecondModuleRouterProtocol {
        
        var router: SecondModuleRouterProtocol = SecondModuleRouter()
        
        // assign VIP
        var view: SecondModuleViewProtocol = SecondModuleViewController()
        var presenter: SecondModulePresenterProtocol = SecondModulePresenter()
        var interactor: SecondModuleInteractorProtocol = SecondModuleInteractor()
        
        presenter.router = router

        view.presenter = presenter
        view.router = router
        
        interactor.presenter = presenter
        
        presenter.interactor = interactor
        
        router.entry = view as? SecondModuleRouterEntryPoint
        router.view = view
        
        return router
        
    }
}
