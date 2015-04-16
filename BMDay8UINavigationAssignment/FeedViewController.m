//
//  FeedViewController.m
//  BMDay8UINavigationAssignment
//
//  Created by Kunwardeep Gill on 2015-04-16.
//  Copyright (c) 2015 ProjectDGW. All rights reserved.
//

#import "FeedViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  UIButton *feedViewButton = [UIButton buttonWithType:UIButtonTypeCustom];
  [feedViewButton setImage:[UIImage imageNamed:@"profile_image"] forState:UIControlStateNormal];
  [feedViewButton setImage:[UIImage imageNamed:@"profile_image"] forState:UIControlStateHighlighted];
  feedViewButton.frame = CGRectMake(15, 15, 200, 189);
  
  [self.view addSubview:feedViewButton];
  [feedViewButton addTarget:self action:@selector(showZoomedProfile:) forControlEvents:UIControlEventTouchUpInside];
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
