//
//  NSSingle.h
//  Delegation
//
//  Created by Stephen on 9/16/12.
//  Copyright 2012 silicon valley. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSSingle : NSObject {
	NSString *aString;
}

+ (id)sharedSingle;
- (NSString *)getString;
@end
