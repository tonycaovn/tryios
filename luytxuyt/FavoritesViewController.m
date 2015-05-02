//
//  FavoritesViewController.m
//  luytxuyt
//
//  Created by tonycao on 5/2/15.
//  Copyright (c) 2015 Thanh Cao. All rights reserved.
//

#import "FavoritesViewController.h"

@interface FavoritesViewController ()

@end

@implementation FavoritesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    UIButton *tryiosBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [tryiosBtn setImage:[UIImage imageNamed:@"try-ios-ss.jpg"]
               forState:UIControlStateNormal];
    [tryiosBtn setImage:[UIImage imageNamed:@"try-ios-ss.jpg"]
               forState:UIControlStateHighlighted];
    [tryiosBtn setFrame:CGRectMake(15,15,100,100)];
    [tryiosBtn addTarget:self action:@selector(showZoomedPicture:)
        forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:tryiosBtn];
    // Do any additional setup after loading the view.
}
- (void)showZoomedPicture:(UIButton *)sender
{
    UIViewController *tryiosImageViewController = [[UIViewController alloc] init];
    tryiosImageViewController.view.frame = self.view.frame;
    tryiosImageViewController.title = @"Try IOS Logo";
    
    UIImageView *tryiosView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"try-ios-ss.jpg"]];
    [tryiosView setContentMode:UIViewContentModeScaleAspectFit];
    tryiosView.frame = tryiosImageViewController.view.frame;
    [tryiosImageViewController.view addSubview:tryiosView];
    
    [self.navigationController pushViewController:tryiosImageViewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
