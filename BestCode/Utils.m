//
//  Utils.m
//  BestCode
//
//  Created by Medpats on 8/19/2557 BE.
//  Copyright (c) 2557 Medpats. All rights reserved.
//

#import "Utils.h"
NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

@implementation Utils

- (NSString *) randomStringWithLength: (int) len {
  
  NSMutableString *randomString = [NSMutableString stringWithCapacity: len];
  
  for (int i=0; i<len; i++) {
    [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random_uniform([letters length]) % [letters length]]];
  }
  
  return randomString;
}

- (NSInteger)randomNumber
{
  return arc4random() % 15 + 5;
}
@end
