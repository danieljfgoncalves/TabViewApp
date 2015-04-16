//
//  FavoritesViewController.m
//  TabViewApp
//
//  Created by Daniel Goncalves on 2015-04-15.
//  Copyright (c) 2015 Daniel J Goncalves. All rights reserved.
//

#import "FavoritesViewController.h"
#import "ProfileViewController.h"

@interface FavoritesViewController ()

@end

@implementation FavoritesViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Favorites";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_favorites"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"logo.jpg"]];
    
    imageView.contentMode = UIViewContentModeTop;
    imageView.frame = self.view.frame;
    
    [self.view addSubview:imageView];
    
    UIButton *profileButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    profileButton.frame = CGRectMake(60, 300, 200, 44);
    [profileButton setTitle:@"View Profile" forState:UIControlStateNormal];
    [self.view addSubview:profileButton];
    [profileButton addTarget:self action:@selector(showProfile:) forControlEvents:UIControlEventTouchUpInside];
}

// Declare showProfile Method here
-(void)showProfile:(id)sender {
    ProfileViewController *profileViewController = [[ProfileViewController alloc]init];
    [self.navigationController pushViewController:profileViewController animated:YES];
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
