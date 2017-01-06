//
//  CollectionViewCell.m
//  CellSelection
//
//  Created by Ankur Patel on 1/6/17.
//  Copyright © 2017 Encore Dev Labs LLC. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    UILabel *label = [[UILabel alloc] initWithFrame:self.bounds];
    [label setTextAlignment:NSTextAlignmentCenter];
    [self.contentView addSubview:label];
    
    self.backgroundView = [[UIView alloc] initWithFrame:self.bounds];
    self.backgroundView.backgroundColor = [UIColor lightGrayColor];
    
    self.selectedBackgroundView = [[UIView alloc] initWithFrame:self.bounds];
    self.selectedBackgroundView.backgroundColor = [UIColor redColor];
}

@end
