//
//  BitriseSampleUnitAndOtherTestsAppTests.m
//  BitriseSampleUnitAndOtherTestsAppTests
//
//  Created by Viktor Benei on 3/3/15.
//  Copyright (c) 2015 Bitrise. All rights reserved.
//

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>
#import "ViewController.h"

QuickSpecBegin(ViewControllerSpec)

__block ViewController *viewController = nil;
beforeEach(^{
    viewController = [[ViewController alloc] init];
});

describe(@"-viewDidLoad", ^{
    beforeEach(^{
        // Method #1: Access the view to trigger -[ViewController viewDidLoad].
        [viewController view];
    });
    
    it(@"displays the button", ^{
        expect(viewController.testButton.text).to(equal(@"Button"))
    });
});

describe(@"the view", ^{
    beforeEach(^{
        // Method #2: Triggers .viewDidLoad(), .viewWillAppear(), and .viewDidAppear() events.
        [viewController beginAppearanceTransition:YES animated:NO];
        [viewController endAppearanceTransition];
    });
    // ...
});

describe(@"-viewWillDisappear", ^{
    beforeEach(^{
        // Method #3: Directly call the lifecycle event.
        [viewController viewWillDisappear:NO];
    });
    // ...
});

QuickSpecEnd
