//
//  FeedTableViewCell.m
//  TabViewApp
//
//  Created by Daniel Goncalves on 2015-04-24.
//  Copyright (c) 2015 Daniel J Goncalves. All rights reserved.
//

#import "FeedTableViewCell.h"
#import "UIImageView+AFNetworking.h"

@implementation FeedTableViewCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    // Custom Styling
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor lightGrayColor];
        
        self.labelName = [[UILabel alloc]initWithFrame:CGRectMake(140.0f, 100.0f, 100.0f, 25.0f)];
        [self.contentView addSubview:self.labelName];
        
        // set Image from Internet
        self.profileImageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 60, 100, 114)];

        UIImage *placeholder = [UIImage imageNamed:@"placeholder.jpg"];
        NSURL *imageURL = [NSURL URLWithString:@"http://www.bitmakerlabs.com/logo.png"];
        
        [self.profileImageView setImageWithURL:imageURL placeholderImage:placeholder];
        
        self.profileImageView.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:self.profileImageView];
        
        
        
        
    }
    return self;
    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
