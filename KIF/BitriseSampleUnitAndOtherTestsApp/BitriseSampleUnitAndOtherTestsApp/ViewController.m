//
//  ViewController.m
//  BitriseSampleUnitAndOtherTestsApp
//
//  Created by Viktor Benei on 3/3/15.
//  Copyright (c) 2015 Bitrise. All rights reserved.
//

#import "ViewController.h"

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
- (IBAction)testButtonTouched:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Button touched" message:@"That was cool! Good job!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

@end
