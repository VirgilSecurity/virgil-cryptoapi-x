//
//  VirgilCryptoAPI.h
//  VirgilCryptoAPI
//
//  Created by Oleksandr Deundiak on 9/12/17.
//  Copyright © 2017 Oleksandr Deundiak. All rights reserved.
//

#import "TargetConditionals.h"

#if TARGET_OS_IPHONE
    #import <UIKit/UIKit.h>
#else
    #import <Cocoa/Cocoa.h>
#endif

//! Project version number for VirgilCryptoAPI.
FOUNDATION_EXPORT double VirgilCryptoAPIVersionNumber;

//! Project version string for VirgilCryptoAPI.
FOUNDATION_EXPORT const unsigned char VirgilCryptoAPIVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <VirgilCryptoAPI/PublicHeader.h>


