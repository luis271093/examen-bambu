//
//  RegisterViewController.swift
//  Pruebabambu
//
//  Created luis hector hernandez godinez  on 12/09/22.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit


class RegisterViewController: UIViewController, RegisterViewProtocol {


    @IBOutlet weak var txfNombre: UITextField!
    @IBOutlet weak var txfApellidos: UITextField!
    @IBOutlet weak var txfCorreo: UITextField!
    @IBOutlet weak var txfContraseña: UITextField!
    @IBOutlet weak var txfConfirmContraseña: UITextField!
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var btnReturn: UIButton!

	var presenter: RegisterPresenterProtocol?

	override func viewDidLoad() {
        super.viewDidLoad()

        self.hideKeyboardWhenTappedAround()
        btnRegister.layer.cornerRadius = 18
    }

    func actualizarDatosUsuarios() {
        removeSpinner()
        showAlert(message: "Se realizo exitosamente el registro", title: "Exitoso")
            
    }

    func showAlert(message: String, title: String){

        let alertController = UIAlertController(title: title, message: message , preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.destructive, handler: { action in
            self.dismiss(animated: true)

        }))
        self.present(alertController, animated: true, completion: nil)
    }
    
    func didError(error: String) {
        removeSpinner()
        showAlert(message: error, title: "Error" )
    }
  

    @IBAction func btnReturnAction(_ sender: Any) {
        self.dismiss(animated: true)

    }
    @IBAction func btnActionRegister(_ sender: Any) {

        guard let nombre = txfNombre.text  else {
            return
        }
        guard let apellido = txfApellidos.text else {
            return

        }
        guard let correo = txfCorreo.text else {
            return
        }
        guard let contraseña = txfContraseña.text else {
            return
        }

        let item = UsuarioDatos(nombre: nombre, apellido: apellido, correo: correo, contraseña: contraseña)

        showSpinner(onView: self.view)
        self.presenter?.obtenerDatosUsuario(item: item)
    }
}
