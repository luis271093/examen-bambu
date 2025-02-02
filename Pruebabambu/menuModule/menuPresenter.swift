//
//  menuPresenter.swift
//  Pruebabambu
//
//  Created luis hector hernandez godinez  on 12/09/22.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class menuPresenter: menuPresenterProtocol {

    weak private var view: menuViewProtocol?
    var interactor: menuInteractorProtocol?
    private let router: menuWireframeProtocol

    init(interface: menuViewProtocol, interactor: menuInteractorProtocol?, router: menuWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

}
