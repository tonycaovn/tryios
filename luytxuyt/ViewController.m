//
//  ViewController.m
//  luytxuyt
//
//  Created by tonycao on 4/27/15.
//  Copyright (c) 2015 Thanh Cao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor yellowColor];
    self.firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.firstButton.frame = CGRectMake(100, 100, 100, 44);
    [self.firstButton setTitle:@"Click Me" forState:UIControlStateNormal];
    [self.view addSubview:self.firstButton];
    
    [self.firstButton addTarget:self action:@selector(buttonPressed:) forControlEvents:(UIControlEventTouchUpInside)];
    
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 30, 200, 44)];
    firstLabel.backgroundColor = [UIColor clearColor];
    firstLabel.text = @"Hello, welcome to my app!";
    [self.view addSubview:firstLabel];
}
- (void)buttonPressed:(UIButton *)sender
{
    NSLog(@"Button pressed, sender: %@", sender);
    self.view.alpha = ((double)arc4random() / 0x100000000);
    
}
- (void)loadView {
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    self.view = view;
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"==== Touches Ended =====");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
