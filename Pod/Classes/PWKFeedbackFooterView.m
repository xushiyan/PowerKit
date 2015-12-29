//
//  PWKFeedbackFooterView.m
//  Pods
//
//  Created by Xu, Raymond on 12/23/15.
//
//

#import "PWKFeedbackFooterView.h"

@interface PWKFeedbackFooterView ()


@end

@implementation PWKFeedbackFooterView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UIButton *feedbackButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [feedbackButton setTitle:NSLocalizedString(@"Feedback", @"") forState:UIControlStateNormal];
        [feedbackButton setImage:[UIImage imageNamed:@"ic_mail_outline_18pt"] forState:UIControlStateNormal];
        feedbackButton.titleLabel.font = [UIFont systemFontOfSize:14];
        [feedbackButton addTarget:self.delegate action:@selector(feedbackButtonDidTouch:) forControlEvents:UIControlEventTouchUpInside];
        self.feedbackButton = feedbackButton;
        
        UIButton *rateButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [rateButton setTitle:NSLocalizedString(@"Rate on AppStore", @"") forState:UIControlStateNormal];
        [rateButton setImage:[UIImage imageNamed:@"ic_star_border_18pt"] forState:UIControlStateNormal];
        rateButton.titleLabel.font = [UIFont systemFontOfSize:14];
        [rateButton addTarget:self action:@selector(openAppItemPage:) forControlEvents:UIControlEventTouchUpInside];
        self.rateButton = rateButton;
        
        UIStackView *horizontalStack = [[UIStackView alloc] initWithArrangedSubviews:@[feedbackButton,rateButton]];
        horizontalStack.axis = UILayoutConstraintAxisHorizontal;
        horizontalStack.distribution = UIStackViewDistributionFillEqually;
        horizontalStack.alignment = UIStackViewAlignmentCenter;
        horizontalStack.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:horizontalStack];
        
        NSDictionary *viewDict = NSDictionaryOfVariableBindings(horizontalStack);
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[horizontalStack]|" options:0 metrics:nil views:viewDict]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[horizontalStack]|" options:0 metrics:nil views:viewDict]];
    }
    return self;
}

- (void)openAppItemPage:(id)sender {
    [[UIApplication sharedApplication] openURL:self.appStoreURL];
}

@end
