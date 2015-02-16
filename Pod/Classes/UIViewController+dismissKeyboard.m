//
//  UIViewController+dismissKeyboard.m
//  Dismissy
//
//  Created by Miguel Alonso Jr on 2/16/15.
//  Copyright (c) 2015 Miguel Alonso, Jr.. All rights reserved.
//

#import "UIViewController+dismissKeyboard.h"
#import <JRSwizzle.h>



// TODO: Category class is simple enough for now. Need to add tests at some point
@implementation UIViewController (dismissKeyboard)
#pragma 
+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSError *error;
        BOOL result = [[self class] jr_swizzleMethod:@selector(touchesBegan:withEvent:) withMethod:@selector(maj_touchesBegan:withEvent:) error:&error];
        if (!result || error) {
            NSLog(@"Swizzling of UIViewContorller failed - %@", [error description]);
        }
    });
}

- (void)maj_touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self dismissKeyboard];
    [super touchesBegan:touches withEvent:event];
}

- (void)dismissKeyboard {
    [self.view endEditing:YES];
}

@end
