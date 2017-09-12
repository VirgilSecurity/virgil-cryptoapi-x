//
//  VSA001_APITests.m
//  VirgilCryptoAPI
//
//  Created by Oleksandr Deundiak on 9/12/17.
//  Copyright © 2017 Oleksandr Deundiak. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>
@import VirgilCryptoAPI;

@interface DummyPublicKey : NSObject<VSAPublicKey>
@end

@implementation DummyPublicKey
@end

@interface DummyPrivateKey : NSObject<VSAPrivateKey>
@end

@implementation DummyPrivateKey
@end

@interface DummyCrypto: NSObject<VSACrypto>
@end

@implementation DummyCrypto

- (NSData *)generateSignatureOf:(NSData *)data using:(id <VSAPrivateKey>)privateKey {
    return [[NSData alloc] init];
}

- (BOOL)verifySignature:(NSData *)signature of:(NSData *)data with:(id <VSAPublicKey>)publicKey {
    return YES;
}

- (NSData *)computeSHA256For:(NSData *)data {
    return [[NSData alloc] init];
}

- (id <VSAPublicKey>)importPublicKeyFrom:(NSData *)data error:(NSError **)error {
    return nil;
}

- (NSData *)exportPublicKey:(id <VSAPublicKey>)publicKey {
    return [[NSData alloc] init];
}

@end

@interface VSA001_APITests : XCTestCase

@end

@implementation VSA001_APITests

- (void)test001_testAPI {
    id <VSACrypto> crypto = [[DummyCrypto alloc] init];
    id <VSAPublicKey> publicKey = [[DummyPublicKey alloc] init];
    id <VSAPrivateKey> privateKey = [[DummyPrivateKey alloc] init];
    
    XCTAssert(crypto != nil);
    XCTAssert(privateKey != nil);
    XCTAssert(publicKey != nil);
}

@end
