//
//  ViewController.m
//  BitriseSampleUnitAndOtherTestsApp
//
//  Created by Viktor Benei on 3/3/15.
//  Copyright (c) 2015 Bitrise. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>
static NSString * const BaseURLString = @"http://www.raywenderlich.com/demos/weather_sample/";
@interface ViewController ()
{
    
    __weak IBOutlet UIButton *btnFetched;
}
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
    // 1
    NSURL *baseURL = [NSURL URLWithString:BaseURLString];
    NSDictionary *parameters = @{@"format": @"json"};
    
    // 2
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseURL];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
   
    [manager GET:@"weather.php" parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
        btnFetched.hidden = NO;
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
    }];
}
- (IBAction)fetchButtonClicked:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Button touched" message:@"That was cool! Good job!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
}

@end
