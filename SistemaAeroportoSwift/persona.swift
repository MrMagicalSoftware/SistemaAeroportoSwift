//
//  persona.swift
//  SistemaAeroportoSwift
//
//  Created by mr on 13/06/22.
//  Copyright © 2022 mr. All rights reserved.
//

import Foundation


class Persona {
    
    private var nome : String;
    private var cognome : String;
    private var eta : Int;
    
    init(nome:String ,cognome:String , eta: Int){
        self.cognome = cognome;
        self.nome = nome;
        self.eta = eta;
    }
    
    
    func stampaInfo() -> String{
        return nome + " " + cognome + " " + String(eta);
    }
    
    func setEta(eta : Int) {
        self.eta = eta > 0 ? eta : -eta ;
    }
    
    
    
    func getEta() -> Int {
        return self.eta;
    }
    
    func getNome() -> String{
        return self.nome;
    }

    func getCognome() -> String {
        return self.cognome
    }
    
    
}

