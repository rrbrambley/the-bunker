//
//  OtherInstruction.swift
//  TheBunker
//
//  Created by Robert Brambley on 4/27/16.
//  Copyright © 2016 AATT. All rights reserved.
//

import Foundation

/**
    A concrete instruction Messageable for miscellaneous interactions with a console.
 */
struct OtherInstruction: Messageable {
    
    enum Type: String {
        case Informative
        case Instructional
    }
    
    var instruction: String
    var type: Type
}