//
//  ConsoleAccessToken.swift
//  TheBunker
//
//  Created by Robert Brambley on 4/27/16.
//  Copyright © 2016 AATT. All rights reserved.
//

import Foundation

/**
    An Authenticable implementation used by the Console of The Bunker
 */
struct ConsoleAccessToken: Authenticable {
    var accessToken: String
    var tokenType: String
    var client: String
    var expiry: NSDate
    var uid: String
}