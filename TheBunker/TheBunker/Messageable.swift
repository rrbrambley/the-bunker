//
//  Messageable.swift
//  TheBunker
//
//  Created by Robert Brambley on 4/27/16.
//  Copyright © 2016 AATT. All rights reserved.
//

import Foundation

/**
    A protocol describing all receivable Messages over a Networking instance.
*/
protocol Messageable {
    var instruction: String { get }
}