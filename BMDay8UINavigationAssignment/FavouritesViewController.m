//
//  FavouritesViewController.m
//  BMDay8UINavigationAssignment
//
//  Created by Kunwardeep Gill on 2015-04-15.
//  Copyright (c) 2015 ProjectDGW. All rights reserved.
//

#import "FavouritesViewController.h"
#import "ProfileViewController.h"

@interface FavouritesViewController ()

@end

@implementation FavouritesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    self.title = @"Favourites";
    self.tabBarItem.image = [UIImage imageNamed:@"favourite"];
  }
  return self;
  
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Logo2"]];
  
  imageView.contentMode = UIViewContentModeCenter;
  imageView.frame = self.view.frame;
  
  [self.view addSubview:imageView];

  UIButton *favouritesViewButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  favouritesViewButton.frame = CGRectMake(60, 300, 200, 44);
  [favouritesViewButton setTitle:@"View Favourites" forState:UIControlStateNormal];
  [self.view addSubview:favouritesViewButton];
  [favouritesViewButton addTarget:self action:@selector(showProfile:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
  NSLog(@"Touched Favourites");
}


- (void)showProfile:(id)sender {
  ProfileViewController *derp = [[ProfileViewController alloc]init];
  [self.navigationController pushViewController:derp animated:YES];
  
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
