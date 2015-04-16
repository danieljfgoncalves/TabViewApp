//
//  ProfileViewController.m
//  TabViewApp
//
//  Created by Daniel Goncalves on 2015-04-15.
//  Copyright (c) 2015 Daniel J Goncalves. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Profile";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_profile"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *profileButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [profileButton setTitle:@"Profile Image" forState:UIControlStateNormal];
    
    [profileButton setImage:[UIImage imageNamed:@"profile_image.png"] forState:UIControlStateNormal];
    
    profileButton.frame = CGRectMake(15, 15, 200, 189);
    [self.view addSubview:profileButton];
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
