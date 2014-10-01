//
//  ListViewController.m
//  Collections
//
//  Created by Vincent Huang on 2014/9/30.
//  Copyright (c) 2014年 Rinse inc. All rights reserved.
//

#import "ListViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // Set Collection delegate and data source to self
    myCollectionView.delegate = self;
    myCollectionView.dataSource = self;
    
    // Set Collection view's background color
    myCollectionView.backgroundColor = [UIColor whiteColor];
    
    // Register UiCollection cell for reuse
    UINib *cellNib = [UINib nibWithNibName:@"CollectionCell" bundle:nil];
    [myCollectionView registerNib:cellNib forCellWithReuseIdentifier:@"sampleCell"];
    
    // Setup UICollection view layout
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    [myCollectionView setCollectionViewLayout:flowLayout];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UiCollectionView delegate methods

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 128;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"sampleCell";
    
    UICollectionViewCell *cell = [cv dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Set cell label
    UILabel *cellTitle = (UILabel *)[cell.contentView viewWithTag:100];
    cellTitle.text = @"blah";

    return cell;
}

@end
