//
//  ListViewController.h
//  Collections
//
//  Created by Vincent Huang on 2014/9/30.
//  Copyright (c) 2014年 Rinse inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>
{
    __weak IBOutlet UICollectionView *myCollectionView;
}

@end
