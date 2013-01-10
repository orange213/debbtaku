//
//  jp_ac_kitakyu_uViewController.m
//  denntaku
//
//  Created by 宮地　俊彰 on 12/11/08.
//  Copyright (c) 2012年 Toshiaki Miyaji. All rights reserved.
//

#import "jp_ac_kitakyu_uViewController.h"

@interface jp_ac_kitakyu_uViewController ()

@end

@implementation jp_ac_kitakyu_uViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}
double m=0;
int flag=0;
int calc=0;
double result=0;
double n=0;

- (IBAction)Button1:(id)sender {
    if(flag==0){
        m=1;
        flag=1;}
    else{
        m=m*10+1;}
        [[self Label] setText:[ NSString stringWithFormat:@"%g",m]];}

- (IBAction)Button2:(id)sender {
    if(flag==0){
        m=2;
        flag=1;}
    else{
        m=m*10+2;}
     [[self Label] setText:[ NSString stringWithFormat:@"%g",m]];
}

- (IBAction)Button3:(id)sender {
    if(flag==0){
        m=3;
        flag=1;}
    else{
        m=m*10+3;}
     [[self Label] setText:[ NSString stringWithFormat:@"%g",m]];
}

- (IBAction)Button4:(id)sender {
    if(flag==0){
        m=4;
        flag=1;}
    else{
        m=m*10+4;}
     [[self Label] setText:[ NSString stringWithFormat:@"%g",m]];
}

- (IBAction)Button5:(id)sender {
    if(flag==0){
        m=5;
        flag=1;}
    else{
        m=m*10+5;}
     [[self Label] setText:[ NSString stringWithFormat:@"%g",m]];
}

- (IBAction)Button6:(id)sender {
    if(flag==0){
        m=6;
        flag=1;}
    else{
        m=m*10+6;}
     [[self Label] setText:[ NSString stringWithFormat:@"%g",m]];
}

- (IBAction)Button7:(id)sender {
    if(flag==0){
        m=7;
        flag=1;}
    else{
        m=m*10+7;}
     [[self Label] setText:[ NSString stringWithFormat:@"%g",m]];
}

- (IBAction)Button8:(id)sender {
    if(flag==0){
        m=8;
        flag=1;}
    else{
        m=m*10+8;}
     [[self Label] setText:[ NSString stringWithFormat:@"%g",m]];
}

- (IBAction)Button9:(id)sender {
    if(flag==0){
        m=9;
        flag=1;}
    else{
        m=m*10+9;}
     [[self Label] setText:[ NSString stringWithFormat:@"%g",m]];
}

- (IBAction)Button0:(id)sender {
    if(flag==0){
        m=0;
        flag=1;}
    else{
        m=m*10+0;}
     [[self Label] setText:[ NSString stringWithFormat:@"%g",m]];
}

- (IBAction)Plus:(id)sender {
    switch (calc) {
        case 0:
            result=m;
            m=0;
            break;
        case 1:
            result=result+m;
            m=0;
            break;
        case 2:
            result=result-m;
            m=0;
            break;
        case 3:
            result=result*m;
            m=0;
            break;
        case 4:
            result=result/m;
            m=0;
            break;
            
        default:
            break;
    }
    calc=1;
    flag=0;
    [[self Label] setText:[ NSString stringWithFormat:@"%g",result]];
}

- (IBAction)Mnus:(id)sender {
    switch (calc) {
        case 0:
            //[[self Label] setText:[ NSString stringWithFormat:@"%g",m]];
            result=m;
            m=0;
            break;
        case 1:
            result=result+m;
            m=0;
            break;
        case 2:
            result=result-m;
            m=0;
            break;
        case 3:
            result=result*m;
            m=0;
            break;
        case 4:
            result=result/m;
            m=0;
            break;
            
        default:
            break;
    }
    calc=2;
    flag=0;
    [[self Label] setText:[ NSString stringWithFormat:@"%g",result]];
}

- (IBAction)Kakeru:(id)sender {
    switch (calc) {
        case 0:
            flag=0;
            result=m;
            m=0;
            break;
        case 1:
            result=result+m;
            flag=0;
            m=0;
            break;
        case 2:
            result=result-m;
            flag=0;
            m=0;
            break;
        case 3:
            result=result*m;
            flag=0;
            m=0;
            break;
        case 4:
            result=result/m;
            flag=0;
            
            break;
            
        default:
            break;
    }
    calc=3;
    flag=0;
    
    [[self Label] setText:[ NSString stringWithFormat:@"%g",result]];
}

- (IBAction)Waru:(id)sender {
    switch (calc) {
        case 0:
            flag=0;
            result=m;
            break;
        case 1:
            result=result+m;
            flag=0;
            break;
        case 2:
            result=result-m;
            flag=0;
            break;
        case 3:
            result=result*m;
            flag=0;
            break;
        case 4:
            result=result/m;
            flag=0;
            break;
            
        default:
            break;
    }
    calc=4;
    flag=0;
    
    [[self Label] setText:[ NSString stringWithFormat:@"%g",result]];
}

- (IBAction)CLEAR:(id)sender {
    m=0;
    result=0;
    n=0;
    flag=0;
    [[self Label] setText:[ NSString stringWithFormat:@"%g",m]];
}

- (IBAction)Ikoru:(id)sender {
    switch (calc) {
        case 0:
            flag=0;
            result=m;
            break;
        case 1:
            result=result+m;
            flag=0;
            break;
        case 2:
            result=result-m;
            flag=0;
            break;
        case 3:
            result=result*m;
            flag=0;
            break;
        case 4:
            result=result/m;
            flag=0;
            break;
            
        default:
            break;
    }
    flag=0;
    [[self Label] setText:[ NSString stringWithFormat:@"%g",result]];
}

- (IBAction)puramai:(id)sender {
        m=0-m;
        flag=1;
    [[self Label] setText:[ NSString stringWithFormat:@"%g",m]];
}

- (IBAction)shousuutenn:(id)sender {
    
    
}
@end
