//
//  DemoModulePresenter.swift
//  NoStoryBoard
//
//  Created by Asesoftware on 25/10/21.
//

import Foundation

protocol DemoModulePresenterProtocol {
    var interactor: DemoModuleInteractorProtocol? { get set }
    var router: DemoModuleRouterProtocol? { get set }
    //var view: DemoModuleViewProtocol? { get set }
    
    func getDefaultName() -> String
    
}

class DemoModulePresenter: DemoModulePresenterProtocol {
    
    var interactor: DemoModuleInteractorProtocol?
    var router: DemoModuleRouterProtocol?
    //var view: DemoModuleViewProtocol?

    func getDefaultName() -> String {
        return "Américo Cantillo"
    }
}
