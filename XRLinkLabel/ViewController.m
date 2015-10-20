//
//  ViewController.m
//  XRLinkLabel
//
//  Created by XU SHIYAN on 10/20/15.
//  Copyright © 2015 XU SHIYAN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    XRLinkLabel *ll = self.linkLabel;
    ll.attributedText = [[NSAttributedString alloc] initWithString:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dignissim ipsum magna, et ultrices tellus vehicula non. Vivamus fermentum sem ut dui suscipit, sit amet efficitur justo egestas. Pellentesque hendrerit dui eu dui sodales, eu laoreet mauris suscipit. Fusce sed semper velit, nec egestas risus. Sed ut hendrerit odio, at tristique enim. Pellentesque orci felis, mollis non iaculis vitae, euismod sit amet sapien. Integer ut nibh ut enim condimentum commodo eget eu risus." attributes:@{NSFontAttributeName:[UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline]}];
    [ll configureSubstring:@"Pellentesque hendrerit dui" forExternalURL:[NSURL URLWithString:@"http://www.apple.com"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
