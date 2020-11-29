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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noticias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaNoticia = tableView.dequeueReusableCell(withIdentifier: "celdaNoticia") as! celdaNoticiaController
        
        return celdaNoticia
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        noticias.append(Noticias(texto: "Noticia1 aqui karlita", fecha: "30 / 10 / 20", imagen: <#T##String#>))
        noticias.append(Noticias(texto: "Noticia2 aqui karlita", fecha: "30 / 10 / 20", imagen: <#T##String#>))
        noticias.append(Noticias(texto: "Noticia3 aqui karlita", fecha: "30 / 10 / 20", imagen: <#T##String#>))
        noticias.append(Noticias(texto: "Noticia4 aqui karlita", fecha: "30 / 10 / 20", imagen: String))
        noticias.append(Noticias(texto: "Noticia5 aqui karlita", fecha: "30 / 10 / 20", imagen: <#T##String#>))
    }


}

