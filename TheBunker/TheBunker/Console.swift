//
//  Console.swift
//  TheBunker
//
//  Created by Robert Brambley on 4/27/16.
//  Copyright © 2016 AATT. All rights reserved.
//

import Alamofire
import Foundation

/**
    A Networking implementation used by the Console of The Bunker
 */
struct Console: Networking {

    func signIn(email: String, password: String, response: (RetrievalResponse<Authenticable, NSError> -> Void)!) {
        
    }
    
    func retrieveMessages(response: (RetrievalResponse<Array<Messageable>, NSError> -> Void)!) {
        
    }
}