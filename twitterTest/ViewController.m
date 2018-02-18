//
//  ViewController.m
//  twitterTest
//
//  Created by Tom Juszczyk on 2/17/18.
//  Copyright © 2018 tomj. All rights reserved.
//

#import "ViewController.h"
#import <TwitterKit/TwitterKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dotwitter:(id)sender {
    TWTRComposer *composer = [[TWTRComposer alloc] init];
    
    [composer setText:@"test"];
    [composer setImage:[UIImage imageNamed:@"test"]];
    
    // Called from a UIViewController
    [composer showFromViewController:self completion:^(TWTRComposerResult result) {
        if (result == TWTRComposerResultCancelled) {
            NSLog(@"Tweet composition cancelled");
        }
        else {
            NSLog(@"Sending Tweet!");
        }
    }];
}

@end
