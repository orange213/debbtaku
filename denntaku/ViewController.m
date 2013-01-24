//
//  jp_ac_kitakyu_uViewController.m
//  denntaku
//
//  Created by 宮地　俊彰 on 12/11/08.
//  Copyright (c) 2012年 Toshiaki Miyaji. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize model;

- (void)viewDidLoad
{
    [super viewDidLoad];
    model = [[StateMachine alloc] init];
    
    model.m=0;
    model.flag=0;
    model.calc=0;
    model.result=0;
    model.n=0;
    model.exp_number=0;
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (void)ButtonNumber:(int)number{
    [model ButtonNumber:number];
    [[self Label] setText:[ NSString stringWithFormat:@"%g",model.m]];
}

- (IBAction)Button1:(id)sender {
   [self ButtonNumber:1];
}

- (IBAction)Button2:(id)sender {
    [self ButtonNumber:2];
}

- (IBAction)Button3:(id)sender {
   [self ButtonNumber:3];
}

- (IBAction)Button4:(id)sender {
    [self ButtonNumber:4];
}

- (IBAction)Button5:(id)sender {
    [self ButtonNumber:5];
}

- (IBAction)Button6:(id)sender {
    [self ButtonNumber:6];
}

- (IBAction)Button7:(id)sender {
    [self ButtonNumber:7];
}

- (IBAction)Button8:(id)sender {
    [self ButtonNumber:8];
}

- (IBAction)Button9:(id)sender {
    [self ButtonNumber:9];
}

- (IBAction)Button0:(id)sender {
    [model Button0];
    [[self Label] setText:[ NSString stringWithFormat:@"%g",model.m]];
    }

- (IBAction)Plus:(id)sender {
    [model Plus];
    [[self Label] setText:[ NSString stringWithFormat:@"%g",model.result]];
}

- (IBAction)Minus:(id)sender {
    [model Minus];
    [[self Label] setText:[ NSString stringWithFormat:@"%g",model.result]];
}

- (IBAction)Times:(id)sender {
    [model Times];
    [[self Label] setText:[ NSString stringWithFormat:@"%g",model.result]];
}

- (IBAction)Devided:(id)sender {
    [model Devided];
    [[self Label] setText:[ NSString stringWithFormat:@"%g",model.result]];
}

- (IBAction)CLEAR:(id)sender {
    [model CLEAR];
    [[self Label] setText:[ NSString stringWithFormat:@"%g",model.m]];
}

- (IBAction)Ikoru:(id)sender {
    [model Ikoru];
    [[self Label] setText:[ NSString stringWithFormat:@"%g",model.result]];
}

- (IBAction)puramai:(id)sender {
    [model puramai];
    [[self Label] setText:[ NSString stringWithFormat:@"%g",model.m]];
}

- (IBAction)shousuutenn:(id)sender {
    [model shousuutenn];
   /* model.exp_number = 1; */
    
}
@end
