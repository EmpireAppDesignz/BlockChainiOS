//
//  Blockchain.swift
//  BlockChain
//
//  Created by Eric Rosas on 6/22/18.
//  Copyright © 2018 Eric Rosas. All rights reserved.
//

import UIKit

class Blockchain {
    
    var chain = [Block]()
    
    func createBitcoinBlock(data:String) {
        
        let bitcoinBlock = Block()
        
        bitcoinBlock.hash = bitcoinBlock.generateHash()
        bitcoinBlock.data = data
        bitcoinBlock.previousHash = "0000"
        bitcoinBlock.index = 0
        
        chain.append(bitcoinBlock)
        
    }
    
    func createBlock(data:String) {
        
        let newBlock = Block()
        
        newBlock.hash = newBlock.generateHash()
        newBlock.data = data
        newBlock.previousHash = chain[chain.count-1].hash
        newBlock.index = chain.count
        
        chain.append(newBlock)
        
    }
}
