//
//  jp_ac_kitakyu_uViewController.h
//  denntaku
//
//  Created by 宮地　俊彰 on 12/11/08.
//  Copyright (c) 2012年 Toshiaki Miyaji. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StateMachine.h"

@interface ViewController : UIViewController{
    //StateMachine *dentaku;
}

@property StateMachine* model;

- (IBAction)Button1:(id)sender;
- (IBAction)Button2:(id)sender;
- (IBAction)Button3:(id)sender;
- (IBAction)Button4:(id)sender;
- (IBAction)Button5:(id)sender;
- (IBAction)Button6:(id)sender;
- (IBAction)Button7:(id)sender;
- (IBAction)Button8:(id)sender;
- (IBAction)Button9:(id)sender;
- (IBAction)Button0:(id)sender;
- (IBAction)Plus:(id)sender;
- (IBAction)Minus:(id)sender;
- (IBAction)Times:(id)sender;
- (IBAction)Devided:(id)sender;
- (IBAction)CLEAR:(id)sender;
- (IBAction)Ikoru:(id)sender;
- (IBAction)puramai:(id)sender;
- (IBAction)shousuutenn:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *Label;

- (void)ButtonNumber:(int)number;



@end
