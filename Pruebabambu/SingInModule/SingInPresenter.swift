//
//  SingInPresenter.swift
//  Pruebabambu
//
//  Created luis hector hernandez godinez  on 12/09/22.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class SingInPresenter: SingInPresenterProtocol {

    weak private var view: SingInViewProtocol?
    var interactor: SingInInteractorProtocol?
    private let router: SingInWireframeProtocol

    init(interface: SingInViewProtocol, interactor: SingInInteractorProtocol?, router: SingInWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

    func datosUsuarioEmail(email: String, password: String) {
        interactor?.datosUsuarioEmail(email: email, password: password)
    }
    
    func recuperarDatos(isSucces: Bool) {
        view?.actualizarDatosUsuariosEmail(isSucces: isSucces)
    }
}
