//
//  SecondModulePresenter.swift
//  NoStoryBoard
//
//  Created by Asesoftware on 25/10/21.
//

import Foundation

protocol SecondModulePresenterProtocol {
    
    var interactor: SecondModuleInteractorProtocol? { get set }
    
    var router: SecondModuleRouterProtocol? { get set }

}

class SecondModulePresenter: SecondModulePresenterProtocol {
    
    var interactor: SecondModuleInteractorProtocol?
    
    var router: SecondModuleRouterProtocol?
    
}
