//
//  ProfileViewController.m
//  luytxuyt
//
//  Created by tonycao on 5/1/15.
//  Copyright (c) 2015 Thanh Cao. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        self.title = @"Yellow";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_profile"];
    };
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIImageView *greggView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"abc.jpg"]];
    [greggView setContentMode:UIViewContentModeScaleAspectFit];
    greggView.frame = CGRectMake(20,20,100,114);
    
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,140,280,40)];
    nameLabel.text = @"Name: Gregg Pollack";
    
    
    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,200,280,40)];
    cityLabel.text = @"From: Orlando";

    
    UITextView *biography = [[UITextView alloc] initWithFrame:CGRectMake(12,260,300,180)];
    biography.font = [UIFont fontWithName:@"Helvetica" size:15];
    biography.editable = NO;
    biography.text = @"Gregg Pollack is the Gregg Pollack is the Gregg Pollack is the Gregg Pollack is the Gregg Pollack is the Gregg Pollack is the Gregg Pollack is the Gregg Pollack is the...";
    
    UILabel *memberSinceLabel = [[UILabel alloc] initWithFrame:CGRectMake(20,1000,280,40)];
    memberSinceLabel.text = @"November 2012";
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.scrollView.contentSize = CGSizeMake(320,1300);
    [self.scrollView addSubview:biography];
    [self.scrollView addSubview:memberSinceLabel];
    [self.scrollView addSubview:greggView];
    [self.scrollView addSubview:nameLabel];
    [self.scrollView addSubview:cityLabel];
    
    [self.view addSubview:self.scrollView];
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
