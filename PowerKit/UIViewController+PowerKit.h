//
//  UIViewController+PowerKit.h
//  PowerKit
//
//  Created by XU SHIYAN on 6/12/15.
//  Copyright © 2015 PowerStudio. All rights reserved.
//

@import UIKit;
@import CoreMotion;

@interface UIViewController (PowerKit)

- (void)presentNoMailAlert;
- (void)presentAlertForCMError:(CMError)cmerror;

@end
