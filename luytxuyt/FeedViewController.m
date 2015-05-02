//
//  FeedViewController.m
//  luytxuyt
//
//  Created by tonycao on 5/1/15.
//  Copyright (c) 2015 Thanh Cao. All rights reserved.
//

#import "FeedViewController.h"
#import "FavoritesViewController.h"
@interface FeedViewController ()

@end

@implementation FeedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        self.title = @"Blue";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_feed"];
    };
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    UIButton *favoritesButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    favoritesButton.frame = CGRectMake(60,100,200,44);
    [favoritesButton setTitle:@"View Favorites" forState:UIControlStateNormal];
    [self.view addSubview:favoritesButton];
    [favoritesButton addTarget:self action:@selector(showFavorites:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)showFavorites:(UIButton *)sender
{
    FavoritesViewController *favoritesViewController = [[FavoritesViewController alloc] init];
    [self.navigationController pushViewController:favoritesViewController animated:YES];
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
