//
//  ViewController.m
//  UITextViewWithStrangeFrameBug
//
//  Created by Hendrik von Prince on 28/07/15.
//  Copyright © 2015 Sipeso GmbH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(0, -2.13554e+09, 307, 2.13554e+09)];
    
    [self.view addSubview:textView];
    
    // this will never be execud
    self.view.backgroundColor = [UIColor redColor];
}

@end
