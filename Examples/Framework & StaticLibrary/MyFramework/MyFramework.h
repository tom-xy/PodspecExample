//
//  MyFramework.h
//  MyFramework
//
//  Created by Tom Yu on 2021/5/30.
//

#import <Foundation/Foundation.h>

//! Project version number for MyFramework.
FOUNDATION_EXPORT double MyFrameworkVersionNumber;

//! Project version string for MyFramework.
FOUNDATION_EXPORT const unsigned char MyFrameworkVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <MyFramework/PublicHeader.h>

#import <MyFramework/Cat.h>
#import <MyFramework/Dog.h>
#import <MyFramework/AppleTree.h>
#import <MyFramework/Rose.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyFramework : NSObject

+(void)doSomething;

@end

NS_ASSUME_NONNULL_END
