//
//  ViewControllerTendencia.swift
//  proyectoFinal
//
//  Created by Alumno on 11/29/20.
//  Copyright © 2020 Alumno. All rights reserved.
//


import UIKit
class ViewController2: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tendencias : [Tendencias] = []
    
    @IBOutlet weak var tvTendencias: UITableView!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           let destino = segue.destination as! DetalleTendenciaController
        destino.tendencia = tendencias[tvTendencias.indexPathForSelectedRow!.row]
           
       }
    
    func numberOfSections(in tableView: UITableView) -> Int {
           return 1
       }
       
       func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 148
       }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tendencias.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaTendencia = tableView.dequeueReusableCell(withIdentifier: "celdaTendencia") as! celdaTendenciaController
        
        celdaTendencia.lblTexto2.text = tendencias[indexPath.row].texto2
        celdaTendencia.lblFecha2.text = tendencias[indexPath.row].fecha2
        celdaTendencia.imgImagen2.image = UIImage( named: tendencias[indexPath.row].imagen2)
        celdaTendencia.lblEscritor2.text = tendencias[indexPath.row].escritor2

        celdaTendencia.imgImagen2.layer.cornerRadius = 10
        
        return celdaTendencia
    }
    
    override func viewDidLoad() {
              super.viewDidLoad()
              
        tendencias.append(Tendencias(texto2: "Trump dice que saldra de la Casa Blanca", fecha2: "30 / 10 / 20", imagen2: "noticia5", escritor2: "Numero 1", tituloNoticia2: "Trump dice que saldra de la Casa Blanca", noticiaDentro2: "Durante  su  discurso  del  día  de  acción  de  gracias,  Donald  Trump  dijo  a  periodistas  que  si  el  Colegio  Electoral  confirma  la  victoria  de  Joe  Biden,  dejaría  la  Casa  Blanca."))
         tendencias.append(Tendencias(texto2: "Honduras se ahoga", fecha2: "30 / 10 / 20", imagen2: "noticia3", escritor2: "Numero 2", tituloNoticia2: "Honduras se ahoga", noticiaDentro2: "Los  huracanes,  la  pobreza  y  el  COVID  han  sepultado  al  país  centroamericano,  que  retrocede  20  años  después   de  tres  semanas  de  lluvias."))
         tendencias.append(Tendencias(texto2: "Muere cientifico nuclear", fecha2: "20 / 03 / 20", imagen2: "noticia4", escritor2: "Numero 3", tituloNoticia2: "Muere cientifico nuclear", noticiaDentro2: "Nohsen  Fakhrizadeh,  un  cientifico  que  el  gobierno  israelí  cree  que  es  una  fuerza  impulsora  del  programa  de  armas  nucleares  de  Irán,  murió  en  un  presunto  ataque  dirigido  fuera  de  Teherán  el  viernes, segun  los  medios  estatales  iraníes  citan  al  Ministerio  de  Defensa  del  país."))
         tendencias.append(Tendencias(texto2: "Se detectan Super rayos", fecha2: "30 / 10 / 20", imagen2: "noticia2", escritor2: "Numero 4", tituloNoticia2: "Se detectan Super rayos", noticiaDentro2: "Dos  nuevos  estudios  recientemente  publicados  confirman  la  existencia  de  los  llamados  SUPER  RAYOS  determinando  que  son  diferentes  a  los  rayos  ordinarios   y  pueden  ser  mas  de  mil  veces  mas  brillantes."))
         tendencias.append(Tendencias(texto2: "Biden se resbaló", fecha2: "30 / 10 / 20", imagen2: "noticia1", escritor2: "Numero 5", tituloNoticia2: "Biden", noticiaDentro2: "Joe  Biden  se  resbaló  mientras  jugaba  con  su  perro  y  se  torció  el  tobillo.  Pronto  se  espera  que  sea  examinado  por  un  ortopedista  por  precaución,  segun  confirmaron  sus  colaboradores."))       
           
          }
      



}
