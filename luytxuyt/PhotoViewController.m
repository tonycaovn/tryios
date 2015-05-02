//
//  PhotoViewController.m
//  luytxuyt
//
//  Created by tonycao on 5/2/15.
//  Copyright (c) 2015 Thanh Cao. All rights reserved.
//

#import "PhotoViewController.h"

@interface PhotoViewController ()

@end

@implementation PhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *tryiosView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.imageFileName]];
    [tryiosView setContentMode:UIViewContentModeScaleAspectFit];
    tryiosView.frame = self.view.frame;
    [self.view addSubview:tryiosView];
    // Do any additional setup after loading the view.
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
