//
//  CardCrypto.swift
//  VirgilCryptoAPI
//
//  Created by Oleksandr Deundiak on 9/12/17.
//  Copyright © 2017 VirgilSecurity. All rights reserved.
//

import Foundation

/// This protocol defines a list of methods that provide signature generation/verification, sha-256 and public key import/export.
@objc(VSACardCrypto) public protocol CardCrypto {
    /// Generates the digital signature of data using specified private key.
    ///
    /// - Parameters:
    ///   - data: the data to be signed
    ///   - privateKey: the private key of the identity whose signature is going to be generated
    /// - Returns: signature data
    /// - Throws: correspoding error
    @objc func generateSignature(of data: Data, using privateKey: PrivateKey) throws -> Data
    
    /// Verifies the passed-in signature.
    ///
    /// - Parameters:
    ///   - signature: the signature bytes to be verified
    ///   - data: the data to be verified
    ///   - publicKey: the public key of the identity whose signature is going to be verified
    /// - Returns: true if verified, false otherwise
    @objc func verifySignature(_ signature: Data, of data: Data, with publicKey: PublicKey) -> Bool
    
    /// Computes SHA-256.
    ///
    /// - Parameter data: the data to be hashed
    /// - Returns: the resulting hash value
    /// - Throws: corresponding error
    @objc func generateSHA256(for data: Data) throws -> Data
    
    /// Imports public key from its raw data representation.
    ///
    /// - Parameter data: raw public key representation
    /// - Returns: imported public key
    /// - Throws: corresponding error
    @objc func importPublicKey(from data: Data) throws -> PublicKey
    
    /// Exports public key to its raw data representation.
    ///
    /// - Parameter publicKey: public key to be exported
    /// - Returns: raw public key representation
    /// - Throws: corresponding error
    @objc func exportPublicKey(_ publicKey: PublicKey) throws -> Data
}
