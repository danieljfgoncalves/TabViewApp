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
//    self.navigationController.navigationBar.translucent = NO;
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    // Added a profile Button (subView) to the view.
    UIButton *profileButton = [UIButton buttonWithType:UIButtonTypeCustom];
    profileButton.frame = CGRectMake(15, 75, 200, 112.5);
    [profileButton setTintColor:[UIColor yellowColor]];
    UIImage *displayImage = [UIImage imageNamed:@"profile_image"];
    profileButton.layer.cornerRadius = 10.0f;
    profileButton.clipsToBounds = YES;
    [profileButton setImage:displayImage forState: UIControlStateNormal];
//    [profileButton setImage:[UIImage imageNamed:@"profile_image.png"] forState:UIControlStateHighlighted];
    profileButton.backgroundColor = [UIColor yellowColor];

    [self.view addSubview:profileButton];
    [profileButton addTarget:self action:@selector(showZoomedProfile:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
}

-(void)showZoomedProfile:(id)Sender {
    // Creating a new ViewController
    CGRect viewRect = [[UIScreen mainScreen]bounds];
    UIViewController *zoomedProfileViewController = [[UIViewController alloc]init];
    UIView *zoomedProfileView = [[UIView alloc]initWithFrame:viewRect];
    zoomedProfileViewController.view = zoomedProfileView;
    zoomedProfileView.backgroundColor = [UIColor yellowColor];
    
    // Set UIImageView
    UIImageView *zoomedProfileImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"profile_image.png"]];
    zoomedProfileImageView.contentMode = UIViewContentModeScaleAspectFill;
    [zoomedProfileView addSubview:zoomedProfileImageView];
    NSLog(@"Zoomed Did Load");
    
    [self.navigationController pushViewController:zoomedProfileViewController animated:YES];
    NSLog(@"Button Pressed");
    
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
