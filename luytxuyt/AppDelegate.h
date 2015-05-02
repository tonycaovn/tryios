//
//  AppDelegate.h
//  luytxuyt
//
//  Created by tonycao on 4/27/15.
//  Copyright (c) 2015 Thanh Cao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "FeedViewCOntroller.h"
#import "ProfileViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ViewController *viewController;
@property (strong, nonatomic) FeedViewController *feedViewController;
@property (strong, nonatomic) ProfileViewController *profileViewController;
@end

