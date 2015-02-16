//
//  UIViewController+dismissKeyboard.h
//  Dismissy
//
//  Created by Miguel Alonso Jr on 2/16/15.
//  Copyright (c) 2015 Miguel Alonso, Jr.. All rights reserved.

#import <UIKit/UIKit.h>

@interface UIViewController (dismissKeyboard)

- (void)maj_touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
- (void) dismissKeyboard;

@end
