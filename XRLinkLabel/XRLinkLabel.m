//
//  XRLinkLabel.m
//  XRLinkLabel
//
//  Created by XU SHIYAN on 10/20/15.
//  Copyright © 2015 XU SHIYAN. All rights reserved.
//

#import "XRLinkLabel.h"

@interface XRLinkLabel ()

@property (nonatomic,strong,readonly) NSMutableDictionary *rangeActionDictionary;
@property (nonatomic,strong,readonly) NSDictionary *defaultLinkAttributes;

@end

@implementation XRLinkLabel

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.userInteractionEnabled = YES;
        self.multipleTouchEnabled = NO;
    }
    return self;
}

- (void)awakeFromNib {
    self.userInteractionEnabled = YES;
    self.multipleTouchEnabled = NO;
}

- (NSRange)configureSubstring:(NSString * _Nonnull)substring forExternalURL:(NSURL * _Nonnull)externalURL {
    NSAttributedString *attrText = self.attributedText;
    if (!attrText || !attrText.string || !substring) {
        return NSMakeRange(NSNotFound, 0);
    }
    
    NSRange range = [attrText.string rangeOfString:substring];
    if (range.location != NSNotFound) {
        NSMutableAttributedString *mas = [[NSMutableAttributedString alloc] initWithAttributedString:attrText];
        [mas addAttributes:self.defaultLinkAttributes range:range];
        self.attributedText = mas;
    }
    
    return range;
}


@synthesize rangeActionDictionary = _rangeActionDictionary;
- (NSMutableDictionary *)rangeActionDictionary {
    if (!_rangeActionDictionary) {
        _rangeActionDictionary = [NSMutableDictionary dictionary];
    }
    return _rangeActionDictionary;
}
@synthesize defaultLinkAttributes = _defaultLinkAttributes;
- (NSDictionary *)defaultLinkAttributes {
    if (!_defaultLinkAttributes) {
        _defaultLinkAttributes = @{
                                   NSForegroundColorAttributeName:[UIColor blueColor]
                                   };
    }
    return _defaultLinkAttributes;
}
@end
