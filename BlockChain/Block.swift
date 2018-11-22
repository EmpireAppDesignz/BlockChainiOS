//
//  Block.swift
//  BlockChain
//
//  Created by Eric Rosas on 6/22/18.
//  Copyright © 2018 Eric Rosas. All rights reserved.
//

import UIKit

class Block {
    
    var hash: String!
    var data: String!
    var previousHash: String!
    var index: Int!
    
    func generateHash() -> String {
        return NSUUID().uuidString.replacingOccurrences(of: "-", with: "")
    }
    
}
