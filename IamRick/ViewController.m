//
//  ViewController.m
//  IamRick
//
//  Created by Huy Quang Ngo on 7/8/15.
//  Copyright (c) 2015 Khanh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lbliamRick;
@property (weak, nonatomic) IBOutlet UIImageView *ruby;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _ruby.alpha=0;
    _lbliamRick.alpha=0;
    
}
-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [UIView animateWithDuration:4 animations:^{_ruby.alpha=1;} completion:^(BOOL finished){
        [UIView animateWithDuration:3 animations:^{
            _lbliamRick.center=CGPointMake(_lbliamRick.center.x, 50);
            _lbliamRick.alpha=1;
        } completion:nil];
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
