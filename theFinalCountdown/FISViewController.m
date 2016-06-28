//
//  FISViewController.m
//  theFinalCountdown
//
//  Created by Joe Burgess on 7/9/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISViewController.h"

@interface FISViewController ()
@property (strong, nonatomic) IBOutlet UIButton *startButton;
@property (strong, nonatomic) IBOutlet UIButton *pauseButton;
@property (strong, nonatomic) IBOutlet UIButton *cancelButton;
@property (strong, nonatomic) IBOutlet UILabel *timerLabel;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation FISViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.cancelButton.hidden = YES;
    self.timerLabel.hidden = YES;


	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{


}
- (IBAction)startButton:(id)sender {
    self.startButton.hidden = self.pauseButton.enabled = self.cancelButton.enabled = YES;
    self.cancelButton.hidden = !self.startButton.hidden;
    
    self.timerLabel.hidden = NO;
    self.datePicker.hidden = YES;
    
    self.datePicker.minuteInterval = self.datePicker.countDownDuration;
    
}

- (IBAction)cancelButton:(id)sender {
    
    self.cancelButton.hidden = self.startButton.hidden;
    self.startButton.hidden = NO;
    self.pauseButton.enabled = NO;

    self.timerLabel.hidden = YES;
    self.datePicker.hidden = NO;}

- (IBAction)pauseButton:(id)sender {
    self.pauseButton.enabled = NO;
    self.cancelButton.hidden = YES;
    self.startButton.hidden = NO;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
