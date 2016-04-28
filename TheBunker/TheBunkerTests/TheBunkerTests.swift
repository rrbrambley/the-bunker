//
//  TheBunkerTests.swift
//  TheBunkerTests
//
//  Created by Robert Brambley on 4/27/16.
//  Copyright © 2016 AATT. All rights reserved.
//

import Nimble
import Quick
import Swinject
@testable import TheBunker

class TheBunkerTests: QuickSpec {
    
    struct StubNetworking: Networking {
        func signIn(email: String, password: String, response: (RetrievalResponse<Authenticable, NSError> -> Void)!) {
            //TODO
        }
        
        func retrieveMessages(response: (RetrievalResponse<Array<Messageable>, NSError> -> Void)!) {
            //TODO
        }
        
        func readJsonFile(fileName: String) -> String? {
            let bundle = NSBundle(forClass: TheBunkerTests.self)
            let path = bundle.pathForResource(fileName, ofType: "json")
            var rawJson: String?
            do {
                rawJson = try NSString(contentsOfURL: NSURL(fileURLWithPath: path!), encoding: NSUTF8StringEncoding) as String
            } catch {
                print(error)
            }
            return rawJson
        }
    }
    
    override func spec() {
        var container: Container!
        
        beforeEach {
            container = Container()
            
            container.register(Networking.self, name: "stub") { _ in StubNetworking() }
        }
        
        it("authenticates successfully") {
            let client = container.resolve(Networking.self, name: "stub")!
            
            client.signIn("testlogin@gmail.com", password: "testPassword") { (response: RetrievalResponse<Authenticable, NSError>) in
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
        
        it("receives messages") {
            let client = container.resolve(Networking.self, name: "stub")!
            
            client.retrieveMessages { (response: RetrievalResponse<Array<Messageable>, NSError>) in
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
}
