//
//  KIFSampleTest.m
//  BitriseSampleUnitAndOtherTestsApp
//
//  Created by Tamás Bazsonyi on 3/16/15.
//  Copyright (c) 2015 Bitrise. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <KIF/KIF.h>
#import "KIFUITestActor.h"

@interface AlertTests : KIFTestCase
@end



@implementation AlertTests

- (void)beforeEach
{
}

- (void)afterEach
{
 
}

- (void)testSuccessfulAlertDisplay
{
    // Verify that the login succeeded
    [tester waitForTappableViewWithAccessibilityLabel:@"testButton"];
    [tester tapViewWithAccessibilityLabel:@"testButton"];
    [tester waitForTappableViewWithAccessibilityLabel:@"FetchedButton"];
    [tester tapViewWithAccessibilityLabel:@"FetchedButton"];
    [tester waitForViewWithAccessibilityLabel:@"Button touched"];
    
}

@end
