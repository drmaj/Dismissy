#import "Specs.h"

#import "MAJViewController.h"
#import "UIViewController+dismissKeyboard.h"

SpecBegin(MAJViewController)

describe(@"MAJViewController", ^{
    __block MAJViewController *majViewController;

    beforeEach(^{
        majViewController = (MAJViewController *)[UIApplication sharedApplication].delegate.window.rootViewController;
    });

    afterEach(^{
        majViewController = nil;
    });

    describe(@"when a textfield is selected", ^{
        beforeEach(^{
            [tester waitForTimeInterval:1];
            [tester tapViewWithAccessibilityLabel:@"textField"];
        });
        afterEach(^{
        });
        it(@"should show the keyboard", ^{
            [tester waitForSoftwareKeyboard];
        });

        context(@"and the user taps outside the textfield", ^{
            beforeEach(^{
                [majViewController maj_touchesBegan:nil withEvent:nil];
            });
            it(@"should dismiss the keyboard", ^{
                [tester waitForAbsenceOfSoftwareKeyboard];
            });
        });
    });
});

SpecEnd