//
//  ViewController.m
//  BestCode
//
//  Created by Medpats on 8/19/2557 BE.
//  Copyright (c) 2557 Medpats. All rights reserved.
//

#import "ViewController.h"
#import "User.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *txtName;
@property (strong, nonatomic) NSTimer *timer;

@end

@implementation ViewController
            
- (void)viewDidLoad {
  [super viewDidLoad];
  _timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                   target:self
                                 selector:@selector(checkPassword)
                                 userInfo:nil
                                  repeats:YES];
}

- (IBAction)showNewNamePressed:(id)sender {
  User *user = [User getInstance];
  [user radomizeName];
  self.txtName.text = user.name;
}

- (void)checkPassword
{
  User *user = [User getInstance];
  if (user.password != nil) {
    [_timer invalidate];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"RingMD" message:@"Password is generated" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
  }
}

@end
