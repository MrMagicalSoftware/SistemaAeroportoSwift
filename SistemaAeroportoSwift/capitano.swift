//
//  capitano.swift
//  SistemaAeroportoSwift
//
//  Created by mr on 13/06/22.
//  Copyright © 2022 mr. All rights reserved.
//

import Foundation

class Capitano : Persona {
    
    private var esperienza : Int
    
    init(nome:String ,cognome:String , eta: Int , esperienza : Int){
        self.esperienza = esperienza;
        super.init(nome: nome, cognome: cognome, eta: eta)
    }
    
    func setEsperienza(esperienza : Int){
        self.esperienza = esperienza > 0 ? esperienza : -esperienza
    }
    
    func getEsperienza() -> Int{
        return self.esperienza
    }
    
    override func stampaInfo() -> String {
        return super.stampaInfo()
    }
    
    
}
