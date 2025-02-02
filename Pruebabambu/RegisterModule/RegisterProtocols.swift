//
//  RegisterProtocols.swift
//  Pruebabambu
//
//  Created luis hector hernandez godinez  on 12/09/22.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import Foundation

//MARK: Wireframe -
protocol RegisterWireframeProtocol: class {

}
//MARK: Presenter -
protocol RegisterPresenterProtocol: class {
    func obtenerDatosUsuario(item: UsuarioDatos)


    func createdDataUser()
    func didError(error: String)
}

//MARK: Interactor -
protocol RegisterInteractorProtocol: class {

    func datosUsuario(usuarioDatos: UsuarioDatos)

  var presenter: RegisterPresenterProtocol?  { get set }
}

//MARK: View -
protocol RegisterViewProtocol: class {

  var presenter: RegisterPresenterProtocol?  { get set }

    func actualizarDatosUsuarios()
    func didError(error: String)
}

