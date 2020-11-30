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
  
    
    
    @IBOutlet weak var tvNoticias: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesNoticiasController
        destino.noticia = noticias[tvNoticias.indexPathForSelectedRow!.row]
        
    }
    
    
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
        celdaNoticia.lblEscritor.text = noticias[indexPath.row].escritor

        celdaNoticia.imgImagen.layer.cornerRadius = 10
        
        return celdaNoticia
    }
    

    
    override func viewDidLoad() {
           super.viewDidLoad()
           
        noticias.append(Noticias(texto: "Biden se resbaló", fecha: "30 / 10 / 20", imagen: "noticia1", escritor: "Maria Lopez", tituloNoticia: "Biden", noticiaDentro: "Joe  Biden  se  resbaló  mientras  jugaba  con  su  perro  y  se  torció  el  tobillo.  Pronto  se  espera  que  sea  examinado  por  un  ortopedista  por  precaución,  segun  confirmaron  sus  colaboradores."))
            noticias.append(Noticias(texto: "Se detectan Super rayos", fecha: "30 / 10 / 20", imagen: "noticia2", escritor: "Deni Alfaro", tituloNoticia: "Se detectan Super rayos", noticiaDentro: "Dos  nuevos  estudios  recientemente  publicados  confirman  la  existencia  d e los  llamados  SUPER  RAYOS  determinando  que  son  diferentes  a  los  rayos  ordinarios  y  pueden  ser  mas  de  mil  veces  mas  brillantes."))
            noticias.append(Noticias(texto: "Honduras de ahoga", fecha: "30 / 10 / 20", imagen: "noticia3", escritor: "Juan Perez", tituloNoticia: "Honduras de ahora",  noticiaDentro: "Los  huracanes,  la  pobreza  y  el  COVID  han  sepultado  al  país  centroamericano,  que  retrocede  20  años  después  de  tres  semanas  de  lluvias."))
            noticias.append(Noticias(texto: "Muere cientifico nuclear", fecha: "30 / 10 / 20", imagen: "noticia4", escritor: "Karla Jaime", tituloNoticia: "Muere cientifico nuclear", noticiaDentro: "Nohsen  Fakhrizadeh,  un  cientifico  que  el  gobierno  israelí  cree  que  es  una  fuerza  impulsora  del  programa  de  armas  nucleares  de  Irán,  murió  en  un  presunto  ataque  dirigido  fuera  de  Teherán  el  viernes,  segun  los  medios  estatales  iraníes  citan  al  Ministerio  de  Defensa  del  país."))
            noticias.append(Noticias(texto: "Trump dice que saldra de la Casa Blanca", fecha: "30 / 10 / 20", imagen: "noticia5", escritor: "Liz Baez", tituloNoticia: "Trump dice que saldra de la Casa Blanca", noticiaDentro: "Durante  su  discurso  del  día  de  acción  de  gracias,  Donald  Trump  dijo  a  periodistas  que  si  el  Colegio  Electoral  confirma  la  victoria  de  Joe  Biden,  dejaría  la  Casa  Blanca."))
        
       }
   


}

