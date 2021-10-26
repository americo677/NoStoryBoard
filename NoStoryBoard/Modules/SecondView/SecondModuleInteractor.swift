//
//  SecondModuleInteractor.swift
//  NoStoryBoard
//
//  Created by Asesoftware on 25/10/21.
//

import Foundation

protocol SecondModuleInteractorProtocol {
    
    var presenter: SecondModulePresenterProtocol? { get set }

}

class SecondModuleInteractor: SecondModuleInteractorProtocol {
    
    var presenter: SecondModulePresenterProtocol?
    
}
