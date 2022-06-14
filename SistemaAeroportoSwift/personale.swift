//
//  personale.swift
//  SistemaAeroportoSwift
//
//  Created by mr on 13/06/22.
//  Copyright © 2022 mr. All rights reserved.
//

import Foundation

class Personale : Persona {
    
    private var mansione : String
    
    init(nome: String, cognome: String, eta: Int , mansione : String) {
        self.mansione = mansione
        super.init(nome: nome, cognome: cognome, eta: eta)
    }
    
    func getMansione() -> String {
        return self.mansione
    }
    
    
    override func stampaInfo() -> String{
        return super.stampaInfo() + " " + self.mansione;
    }
    
    
    
    
}
