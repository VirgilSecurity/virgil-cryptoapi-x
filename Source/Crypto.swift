//
//  Crypto.swift
//  VirgilCryptoAPI
//
//  Created by Oleksandr Deundiak on 9/12/17.
//  Copyright © 2017 Oleksandr Deundiak. All rights reserved.
//

import Foundation

/// This protocol defines a list of methods that provide signature generation/verification, sha-256 and public key import/export.
@objc(VSACrypto) public protocol Crypto {
    /// Generates the digital signature of data using specified private key.
    ///
    /// - Parameters:
    ///   - data: the data to be signed
    ///   - privateKey: the private key of the identity whose signature is going to be generated
    /// - Returns: signature data
    func generateSignature(of data: Data, using privateKey: PrivateKey) -> Data
    
    /// Verifies the passed-in signature.
    ///
    /// - Parameters:
    ///   - signature: the signature bytes to be verified
    ///   - data: the data to be verified
    ///   - publicKey: the public key of the identity whose signature is going to be verified
    /// - Returns: true if the signature was verified, false if not
    func verifySignature(_ signature: Data, of data: Data, with publicKey: PublicKey) -> Bool
    
    /// Computes SHA-256.
    ///
    /// - Parameter data: the data to be hashed
    /// - Returns: the resulting hash value in hex format
    func computeSHA256(for data: Data) -> String
    
    /// Imports public key from its raw data representation.
    ///
    /// - Parameter data: raw public key representation
    /// - Returns: imported public key
    /// - Throws: corresponding error
    func importPublicKey(from data: Data) throws -> PublicKey
    
    /// Exports public key to its raw data representation.
    ///
    /// - Parameter publicKey: public key to be exported
    /// - Returns: raw public key representation
    func exportPublicKey(_ publicKey: PublicKey) -> Data
}
