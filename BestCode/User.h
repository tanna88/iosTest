//
//  User.h
//  BestCode
//
//  Created by Medpats on 8/19/2557 BE.
//  Copyright (c) 2557 Medpats. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *password;

- (void)radomizeName;
+ (User *)getInstance;
@end
