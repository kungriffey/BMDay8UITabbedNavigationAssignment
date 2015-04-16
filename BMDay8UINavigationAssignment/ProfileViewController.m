//
//  ProfileViewController.m
//  BMDay8UINavigationAssignment
//
//  Created by Kunwardeep Gill on 2015-04-15.
//  Copyright (c) 2015 ProjectDGW. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    self.title = @"Profile";
    self.tabBarItem.image = [UIImage imageNamed:@"profile-icon"];
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  UIButton *profileButton = [UIButton buttonWithType:UIButtonTypeCustom];
  [profileButton setImage:[UIImage imageNamed:@"profile-icon"] forState:UIControlStateNormal];
  [profileButton setImage:[UIImage imageNamed:@"profile-icon"] forState:UIControlStateHighlighted];
  profileButton.frame = CGRectMake(15, 15, 200, 189);
  
  [self.view addSubview:profileButton];
  [profileButton addTarget:self action:@selector(showZoomedProfile:) forControlEvents:UIControlEventTouchUpInside];
}

- (void) showZoomedProfile: (UIButton *) sender
{
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showProfile:(id)sender {
  ProfileViewController *derp = [[ProfileViewController alloc]init];
  [self.navigationController pushViewController:derp animated:YES];
  
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
