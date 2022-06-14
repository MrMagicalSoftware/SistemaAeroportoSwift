//
//  aeroporto.swift
//  SistemaAeroportoSwift
//
//  Created by mr on 13/06/22.
//  Copyright © 2022 mr. All rights reserved.
//

import Foundation


class Aeroporto {
    
    private var aeroplani :[Aeroplano]
    
    init(){
        self.aeroplani = []
        self.aeroplani = generaVettoreDiAerei(numeroDiAerei: 30)
    }
    
    
    func mostraAerei(){
        
        //return self.aeroplani
    }
    
    func generaVettoreDiAerei(numeroDiAerei : Int) ->[Aeroplano] {
        
        var myAeroplani :[Aeroplano] = []
        
        for  _ in 1  ... numeroDiAerei {
            let myAereo = Aeroplano(codiceVolo: generaCodiceVolo(), oreDiVoloNecessarie: Int.random(in: 1...100), capienzaMax: Int.random(in: 1...100))
            
            myAeroplani.append(myAereo)
        }
        
        return myAeroplani;
    }
    
    
    private func generaCodiceVolo () -> String {
        
        var myVettChar : [String] = ["a" , "b" , "c"
            , "d" , "e" , "f", "5" , "6" , "7" , "8" , "9"];
    
        var myCode : String = ""
        
        //set 11 caratteri con lunghezza 10
        
        // [11 * 11 * 11 ..............---> 11 ^ 10
        
        for  _ in 1  ... 10 {
            myCode += myVettChar[Int.random(in: 0...myVettChar.count-1)]
        }
        
        
        return myCode
    }
    
    
    
    
}
