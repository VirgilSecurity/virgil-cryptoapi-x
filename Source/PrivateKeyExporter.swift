//
//  PrivateKeyExporter.swift
//  VirgilCryptoAPI
//
//  Created by Eugen Pivovarov on 1/15/18.
//  Copyright © 2018 VirgilSecurity. All rights reserved.
//

import Foundation

/// This protocol is responsible for private keys import/export
@objc(VSAPrivateKeyExporter) public protocol PrivateKeyExporter {
    /// Exports data of specified Private key.
    ///
    /// - Parameters:
    ///   - privateKey: the private key to be exported
    /// - Returns: exported private key data
    /// - Throws: correspoding error
    @objc func exportPrivateKey(privateKey: PrivateKey) throws -> Data

    /// Imports Private Key from data
    ///
    /// - Parameters:
    ///   - data: the data to be imported
    /// - Returns: imported Private Key instance
    /// - Throws: error if verification failed
    @objc func importPrivateKey(from data: Data) throws -> PrivateKey
}
