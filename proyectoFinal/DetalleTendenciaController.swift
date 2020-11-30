//
//  DetalleTendenciaController.swift
//  proyectoFinal
//
//  Created by Alumno on 11/29/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation
import UIKit
class  DetalleTendenciaController: UIViewController {
    
    @IBOutlet weak var lblTituloNoticia2: UILabel!
    @IBOutlet weak var lblNoticiaDentro2: UILabel!
    
    var tendencia : Tendencias?
    
    
    override func viewDidLoad() {
        if tendencia != nil{
            lblTituloNoticia2.text = tendencia?.tituloNoticia2
            lblNoticiaDentro2.text = tendencia?.noticiaDentro2
        }
    }
    
}
