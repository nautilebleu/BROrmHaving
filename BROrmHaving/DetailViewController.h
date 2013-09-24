//
//  DetailViewController.h
//  BROrmHaving
//
//  Created by Goulwen on 24/09/13.
//  Copyright (c) 2013 Goulwen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
