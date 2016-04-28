//
//  Networking.swift
//  TheBunker
//
//  Created by Robert Brambley on 4/27/16.
//  Copyright © 2016 AATT. All rights reserved.
//

import Alamofire
import Foundation

/**
    The response of a Networking request.
 */
enum RetrievalResponse<Value, Error: NSError> {
    case Success(Value)
    case Failure(NSError)
}

/**
    Describes the functionality of a console on a connected network.
 */
protocol Networking {
    /**
        Sign in to the console
 
        - Parameter email: The email with which to sign in
        - Parameter password: The password associated with the email
    */
    func signIn(email: String, password: String, response: (RetrievalResponse<Authenticable, NSError> -> Void)!)
    
    /**
        Retrieve messages from the console. Requires authentication.
    */
    func retrieveMessages(response: (RetrievalResponse<Array<Messageable>, NSError> -> Void)!)
}