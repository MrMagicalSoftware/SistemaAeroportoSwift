//
//  aeroplano.swift
//  SistemaAeroportoSwift
//
//  Created by mr on 13/06/22.
//  Copyright © 2022 mr. All rights reserved.
//

import Foundation


class Aeroplano {
    
    private var codiceVolo : String
    private var personeBordo : [Persona]
    private let CAPIENZA_MAX : Int
    private let oreDiVoloNecessarie : Int
    
    init(codiceVolo : String , oreDiVoloNecessarie : Int , capienzaMax : Int){
        self.codiceVolo = codiceVolo
        self.oreDiVoloNecessarie = oreDiVoloNecessarie;
        self.personeBordo = []
        self.CAPIENZA_MAX = capienzaMax
    }
    
    func stampaVettore(){
        
        for elemento in self.personeBordo{
            print(elemento.stampaInfo()) // POLIMORFISMO
        }
        
    }
    
    
    func aggiungiPersone(persona : Persona){
        
        if(persona is Personale){
            self.personeBordo.append(persona)
        }
        
        if(persona is Passeggero && self.personeBordo.count < self.CAPIENZA_MAX){
            
            //casting forzato
            let myPass = persona as! Passeggero
            
            if(myPass.getCartaDiImbarco() == self.codiceVolo){
                self.personeBordo.append(persona)
            }
        }
    }
    
    
    
    
    
    
    //Aggiungi Capitano
    
    func aggiungiCapitano(capitano : Capitano) -> Bool{
        if(capitano == nil){
            return false
        }
        if(cercaCapitano()){
            return false;
        }
        
        if(capitano.getEsperienza() >= self.oreDiVoloNecessarie){
            self.personeBordo.append(capitano)
            return true
        }
        return false;
    }
    
    
    private func cercaCapitano() -> Bool {
        for elemento in self.personeBordo {
            if(elemento is Capitano){
                return true;
            }
        }
        return false;
    }
    
    
    
}
