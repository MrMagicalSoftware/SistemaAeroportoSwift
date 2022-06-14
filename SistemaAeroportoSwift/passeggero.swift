//
//  passeggero.swift
//  SistemaAeroportoSwift
//
//  Created by mr on 13/06/22.
//  Copyright © 2022 mr. All rights reserved.
//

import Foundation


class Passeggero : Persona{
    
    private var cartaDiImbarco : String
    
    // carta_di_imbarco
    // carta-di-imbarco
    
    init(nome: String, cognome: String, eta: Int , cartaDiImbarco : String){
        self.cartaDiImbarco = cartaDiImbarco
        super.init(nome: nome, cognome: cognome, eta: eta)
    }
    
    func getCartaDiImbarco() -> String{
        return self.cartaDiImbarco
    }
    
    override func stampaInfo() -> String{
        return super.stampaInfo() + " " + self.cartaDiImbarco;
    }
    
}
