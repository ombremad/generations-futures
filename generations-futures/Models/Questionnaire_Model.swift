//
//  Questionnaire_Model.swift
//  generations-futures
//
//  Created by Apprenant125 on 07/06/2025.
//

import Foundation

func LimitingCharacters(description: String) -> Int{
    if description.count >= 300 {
        return 300
    }
    else{
        return description.count
    }
    
}
