//
//  AccessTokenSigner.swift
//  VirgilCryptoAPI iOS
//
//  Created by Eugen Pivovarov on 1/4/18.
//  Copyright © 2018 Oleksandr Deundiak. All rights reserved.
//

import Foundation

/// This protocol is responsible for signing & verifying tokens' signatures.
@objc(VSAAccessTokenSigner) public protocol AccessTokenSigner {
    /// Generates the digital signature of data using specified private key.
    ///
    /// - Parameters:
    ///   - token: the token to be signed
    ///   - privateKey: the private key of the identity whose signature is going to be generated
    /// - Returns: signature data
    /// - Throws: correspoding error
    @objc func generateTokenSignature(of token: Data, using privateKey: PrivateKey) throws -> Data
    
    /// Verifies the passed-in token's signature.
    ///
    /// - Parameters:
    ///   - token: the token to be verified
    ///   - publicKey: the public key of the identity whose signature is going to be verified
    /// - Throws: error if verification failed
    @objc func verifyTokenSignature(token: Data, with publicKey: PublicKey) throws
    
    ///Represets algorirhm used for signing
    ///
    /// - Returns: algorithm title as String
    @objc func getAlgorithm() -> String
}
