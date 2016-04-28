//
//  TheBunkerClient.swift
//  TheBunker
//
//  Created by Robert Brambley on 4/27/16.
//  Copyright © 2016 AATT. All rights reserved.
//

import Alamofire
import Foundation

struct TheBunkerClient {
    let networking: Networking
    
    func signIn(email: String, password: String) {
        networking.signIn(email, password: password) { (response: RetrievalResponse<Authenticable, NSError>) in
            switch(response) {
                
            case .Success(let token):
                    print(token)
                //TODO
                
            case .Failure(let error):
                print(error.localizedDescription)
                //TODO
                
            }
        }
    }
    
    func retrieveMessages() {
        networking.retrieveMessages { (response: RetrievalResponse<Array<Messageable>, NSError>) in
            switch(response) {
                
            case .Success(let messages):
                for message in messages {
                    print(message)
                }
                //TODO
                
            case .Failure(let error):
                print(error.localizedDescription)
                //TODO
                
            }
        }
    }
}