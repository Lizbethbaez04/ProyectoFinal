//
//  ViewController.swift
//  proyectoFinal
//
//  Created by Alumno on 11/23/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var noticias : [Noticias] = []
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 148
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noticias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaNoticia = tableView.dequeueReusableCell(withIdentifier: "celdaNoticia") as! celdaNoticiaController
        
        celdaNoticia.lblTexto.text = noticias[indexPath.row].texto
        celdaNoticia.lblFecha.text = noticias[indexPath.row].fecha
        celdaNoticia.imgImagen.image = UIImage( named: noticias[indexPath.row].imagen)
        
        celdaNoticia.imgImagen.layer.cornerRadius = 10
        
        return celdaNoticia
    }
    
    override func viewDidLoad() {
           super.viewDidLoad()
           
            noticias.append(Noticias(texto: "Biden", fecha: "30 / 10 / 20", imagen: "noticia1"))
            noticias.append(Noticias(texto: "Se detectan Super rayos", fecha: "30 / 10 / 20", imagen: "noticia2"))
            noticias.append(Noticias(texto: "Honduras de ahora", fecha: "30 / 10 / 20", imagen: "noticia3"))
            noticias.append(Noticias(texto: "Muere cientifico nuclear", fecha: "30 / 10 / 20", imagen: "noticia4"))
            noticias.append(Noticias(texto: "Trump dice que saldra de la Casa Blanca", fecha: "30 / 10 / 20", imagen: "noticia5"))
        
       }
   


}

