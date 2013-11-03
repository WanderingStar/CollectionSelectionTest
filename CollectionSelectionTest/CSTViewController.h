//
//  CSTViewController.h
//  CollectionSelectionTest
//
//  Created by Aneel Nazareth on 11/2/13.
//  Copyright (c) 2013 Aneel Nazareth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CSTViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UILabel *selectionLabel;

-(IBAction)updateSelectionLabel:(id)sender;

@end
