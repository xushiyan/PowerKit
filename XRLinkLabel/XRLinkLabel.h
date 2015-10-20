//
//  XRLinkLabel.h
//  XRLinkLabel
//
//  Created by XU SHIYAN on 10/20/15.
//  Copyright © 2015 XU SHIYAN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XRLinkLabel : UILabel

- (NSRange)configureSubstring:(NSString * _Nonnull)substring forExternalURL:(NSURL * _Nonnull)externalURL;

@end
