//
//  DetallesNoticiasController.swift
//  proyectoFinal
//
//  Created by Alumno on 11/29/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation
import UIKit
class DetallesNoticiasController: UIViewController {
    
    @IBOutlet weak var lblNoticia: UILabel!
    @IBOutlet weak var lblTitulo: UILabel!
    
    var noticia : Noticias?
    
    override func viewDidLoad() {
        if noticia != nil {
            lblTitulo.text = noticia?.tituloNoticia
            lblNoticia.text = noticia?.noticiaDentro
            
        }
    }
}
