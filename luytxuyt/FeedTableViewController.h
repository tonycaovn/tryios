//
//  FeedTableViewController.h
//  luytxuyt
//
//  Created by tonycao on 5/2/15.
//  Copyright (c) 2015 Thanh Cao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeedTableViewController : UITableViewController
    @property (strong, nonatomic) NSArray *titleArray;
    @property (strong, nonatomic) NSArray *imageNameArray;
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
@end
