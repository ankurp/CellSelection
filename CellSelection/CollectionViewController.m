//
//  CollectionViewController.m
//  CellSelection
//
//  Created by Ankur Patel on 1/6/17.
//  Copyright © 2017 Encore Dev Labs LLC. All rights reserved.
//

#import "CollectionViewController.h"
#import "CollectionViewCell.h"

@implementation CollectionViewController

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 50;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    UILabel *label = cell.contentView.subviews[0];
    [label setText:[NSString stringWithFormat:@"%li", indexPath.row]];

    return cell;
}

@end
