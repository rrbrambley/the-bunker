//
//  Authenticable.swift
//  TheBunker
//
//  Created by Robert Brambley on 4/27/16.
//  Copyright © 2016 AATT. All rights reserved.
//

import Foundation

/**
    A protocol representing an access token used for authenticated
    requests with a Networking instance.
 */
protocol Authenticable {
    var accessToken: String { get }
    var tokenType: String { get }
    var client: String { get }
    var expiry: NSDate { get }
    var uid: String { get }
}