//
//  ViewController.m
//  MyFirstApp
//
//  Created by じゃぎお on 2019/05/07.
//  Copyright © 2019 jagio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"viewDidLoad");
    
    CGRect rect = [self.view frame];
    UILabel* label = [[UILabel alloc] initWithFrame:rect];
    label.text = @"Hello View World!";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:label];
}


@end
