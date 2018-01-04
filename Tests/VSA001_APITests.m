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

@interface DummyCardCrypto: NSObject<VSACardCrypto>
@end

@implementation DummyCardCrypto

- (NSData *)generateSignatureOf:(NSData *)data using:(id <VSAPrivateKey>)privateKey error:(NSError **)error {
    return [[NSData alloc] init];
}

- (BOOL)verifySignature:(NSData *)signature of:(NSData *)data with:(id <VSAPublicKey>)publicKey error:(NSError **)error {
    return YES;
}

- (NSData *)computeSHA256For:(NSData *)data {
    return [[NSData alloc] init];
}

- (id <VSAPublicKey>)importPublicKeyFrom:(NSData *)data error:(NSError **)error {
    return nil;
}

- (NSData * _Nullable)exportPublicKey:(id<VSAPublicKey> _Nonnull)publicKey error:(NSError *__autoreleasing  _Nullable * _Nullable)error {
    return [[NSData alloc] init];
}

@end

@interface DummyAccessTokenSigner: NSObject<VSAAccessTokenSigner>
@end

@implementation DummyAccessTokenSigner

- (NSData *)generateTokenSignatureOf:(NSData *)token using:(id <VSAPrivateKey>)privateKey error:(NSError **)error {
    return [[NSData alloc] init];
}

- (BOOL)verifyTokenSignatureWithToken:(NSData *)token with:(id <VSAPublicKey>)publicKey error:(NSError **)error {
    return YES;
}


- (NSString *)getAlgorithm {
    return [[NSString alloc] init];
}

@end

@interface VSA001_APITests : XCTestCase

@end

@implementation VSA001_APITests

- (void)test001_testAPI {
    id <VSAAccessTokenSigner> accessTokenSigner = [[DummyAccessTokenSigner alloc] init];
    id <VSACardCrypto> cardCrypto = [[DummyCardCrypto alloc] init];
    id <VSAPublicKey> publicKey = [[DummyPublicKey alloc] init];
    id <VSAPrivateKey> privateKey = [[DummyPrivateKey alloc] init];
    
    XCTAssert(accessTokenSigner != nil);
    XCTAssert(cardCrypto != nil);
    XCTAssert(privateKey != nil);
    XCTAssert(publicKey != nil);
}

@end
