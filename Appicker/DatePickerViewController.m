//
//  DatePickerViewController.m
//  Appicker
//
//  Created by 9zuehlke on 29/11/13.
//  Copyright (c) 2013 9zuehlke. All rights reserved.
//

#import "DatePickerViewController.h"

@interface DatePickerViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property id<DateReceiver> receiver;

@end

@implementation DatePickerViewController

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

- (IBAction)submitClicked:(id)sender {
    [self.receiver receiveDate:self date:[self.datePicker date]];
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)registerDateReceiver:(id<DateReceiver>)receiver {
    self.receiver = receiver;
}

@end
