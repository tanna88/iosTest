//
//  User.m
//  BestCode
//
//  Created by Medpats on 8/19/2557 BE.
//  Copyright (c) 2557 Medpats. All rights reserved.
//

#import "User.h"
#import "Utils.h"

@implementation User

- (void)radomizeName
{
  self.name = [[[Utils alloc] init] randomStringWithLength:10];
}

+ (User *)getInstance
{
  static User *user;
  if (user == nil) {
    user = [[User alloc] init];
    [user generatePassword];
  }
  return user;
}

- (void)generatePassword
{
  dispatch_queue_t backgroundQueue;
  backgroundQueue = dispatch_queue_create("ringmd", NULL);
  double time = [[[Utils alloc] init] randomNumber];
  //just fake thread doing in backgroudn so long
  dispatch_async(backgroundQueue, ^(void) {
     dispatch_after(time, backgroundQueue, ^(void) {
       self.password = [[[Utils alloc] init] randomStringWithLength:20];
     });
  });
}
@end
