//
//  DetailViewController.h
//  XRKit
//
//  Created by XU SHIYAN on 25/10/15.
//  Copyright © 2015 XU SHIYAN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

