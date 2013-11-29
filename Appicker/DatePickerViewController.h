//
//  DatePickerViewController.h
//  Appicker
//
//  Created by 9zuehlke on 29/11/13.
//  Copyright (c) 2013 9zuehlke. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DateReceiver;

@interface DatePickerViewController : UIViewController

- (void) registerDateReceiver: (id<DateReceiver>) receiver;

@end

@protocol DateReceiver <NSObject>

-(void) receiveDate: (id) del date: (NSDate *) date;

@end