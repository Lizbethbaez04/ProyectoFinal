//
//  Noticias.swift
//  proyectoFinal
//
//  Created by Alumno on 11/23/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import Foundation
class Noticias {
    var texto : String
    var fecha: String
    var imagen: String
    var escritor : String
    var tituloNoticia : String
    var noticiaDentro : String
    
    init(texto: String, fecha: String, imagen: String, escritor: String, tituloNoticia: String, noticiaDentro: String)
    {
        self.texto = texto
        self.fecha = fecha
        self.imagen = imagen
        self.escritor = escritor
        self.tituloNoticia = tituloNoticia
        self.noticiaDentro = noticiaDentro
    }
}
