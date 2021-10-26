//
//  DemoModuleInteractor.swift
//  NoStoryBoard
//
//  Created by Asesoftware on 25/10/21.
//

import Foundation

protocol DemoModuleInteractorProtocol {
    var presenter: DemoModulePresenterProtocol? { get set }
}

class DemoModuleInteractor: DemoModuleInteractorProtocol {
    var presenter: DemoModulePresenterProtocol?
}
