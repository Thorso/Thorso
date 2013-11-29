//
//  MainViewControler.m
//  Appicker
//
//  Created by 9zuehlke on 29/11/13.
//  Copyright (c) 2013 9zuehlke. All rights reserved.
//

#import "MainViewControler.h"
#import "DatePickerViewController.h"

@interface MainViewControler ()
@property (weak, nonatomic) IBOutlet UITextField *dateField;

@end

@implementation MainViewControler

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dateFieldClick:(id)sender {
    DatePickerViewController *dp = [[DatePickerViewController alloc] initWithNibName:nil bundle:nil];
    [dp registerDateReceiver: self];
    [self presentViewController:dp animated:true completion:nil];
}

- (void) receiveDate:(id)del date:(NSDate *)date {
    self.dateField.text = date.description;
}
- (IBAction)logDate:(id)sender {
    NSLog(@"%@", self.dateField.text);
}

@end
