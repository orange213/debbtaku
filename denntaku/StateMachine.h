//
//  StateMachine.h
//  denntaku
//
//  Created by 宮地　俊彰 on 13/01/24.
//  Copyright (c) 2013年 Toshiaki Miyaji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StateMachine : NSObject

@property double m;
@property int flag;
@property int calc;
@property double result;
@property int n;
@property int exp_number;
//@property NSString* labelString;

- (void)ButtonNumber:(int)number;
- (void)Button0;
- (void)Plus;
- (void)Minus;
- (void)Times;
- (void)Devided;
- (void)CLEAR;
- (void)puramai;
- (void)shousuutenn;

- (void)Ikoru;
@end
