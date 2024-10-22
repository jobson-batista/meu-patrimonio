//
//  Patrimony.swift
//  Meu Patrimonio
//
//  Created by Jobson Batista on 19-10-2024.
//

import Foundation

struct Wealth {
    var assets: Double
    var liabilities: Double
    var evaluationDate: Date
    var description: String?
    
    var netWorth: Double {
        return assets - liabilities
    }
    
    func toString() {
        print("Patrimonio avaliado em \(evaluationDate):")
        print("Ativos: \(assets)")
        print("Passivos: \(liabilities)")
        print("Patrimonio Líquido: \(netWorth)")
        if let desc = description {
            print("Descrição: \(desc)")
        }
    }
    
}
