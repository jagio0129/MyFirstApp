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
    
    // UILabelの作成
    CGRect rect = [self.view frame];
    UILabel* label = [[UILabel alloc] initWithFrame:rect];
    label.text = @"Hello View World!";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:label];
    
    // ボタンの作成
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Touch me!" forState:UIControlStateNormal];
    [button sizeToFit];
    button.center = self.view.center;
    [button addTarget:self
            action:@selector(buttonDidPush)
            forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

// ボタンを押すと「Hello Button!」とアラートが出る
- (void)buttonDidPush {
    /*
     UIAlertView* alert = [[UIAlertView alloc] initWithTitle:nil message:@"Hello Button!" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK",nil];
    [alert show];
     */
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"test" message:@"Hello Button!" preferredStyle:UIAlertControllerStyleAlert];
    
    // ボタンが押されたときの処理
    [alert addAction:[UIAlertAction actionWithTitle:@"OK!!!!" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
    }]];
    
    [self presentViewController:alert animated:YES completion:^{
    
    }];
}


@end
