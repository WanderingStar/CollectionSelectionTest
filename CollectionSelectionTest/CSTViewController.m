//
//  CSTViewController.m
//  CollectionSelectionTest
//
//  Created by Aneel Nazareth on 11/2/13.
//  Copyright (c) 2013 Aneel Nazareth. All rights reserved.
//

#import "CSTViewController.h"
#import "CSTCell.h"

@interface CSTViewController ()

@end

@implementation CSTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.collectionView.allowsMultipleSelection = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 3;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 12;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CSTCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.label.text = [NSString stringWithFormat:@"%d:%d", indexPath.section, indexPath.row];
    
    return cell;
}

-(void)updateSelectionLabel:(id)sender
{
    NSMutableString *string = [[NSMutableString alloc] init];
    for (NSIndexPath *indexPath in self.collectionView.indexPathsForSelectedItems) {
        [string appendFormat:@"%d:%d ", indexPath.section, indexPath.row];
    }
    self.selectionLabel.text = string;
}

@end
