//
//  NSSingle.m
//  Delegation
//
//  Created by Stephen on 9/16/12.
//  Copyright 2012 silicon valley. All rights reserved.
//

#import "NSSingle.h"


@implementation NSSingle

static NSSingle *single=nil;
+ (id)sharedSingle {
	if (single==nil) {
		single=[[[NSSingle alloc] init] autorelease];
	}
	return single;
}

- (id)init {
	if (single!=nil) {
    NSException *exception=[NSException exceptionWithName:NSInternalInconsistencyException 
												reason:@"There can only be one NSSingle instance." 
											  userInfo:nil];	
	[exception raise];
    NSLog(@"exception raised");
	}
	[super init];
	return self;
}

- (NSString *)getString {
	aString=@"single string";
	return aString;
}
@end
