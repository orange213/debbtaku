//
//  StateMachine.m
//  denntaku
//
//  Created by 宮地　俊彰 on 13/01/24.
//  Copyright (c) 2013年 Toshiaki Miyaji. All rights reserved.
//

#import "StateMachine.h"

@implementation StateMachine

@synthesize m;
@synthesize flag;
@synthesize calc;
@synthesize result;
@synthesize n;
@synthesize exp_number;
//@synthesize labelString;

- (void)ButtonNumber:(int)number{
        if(exp_number == 0){
            if(flag == 0){
                m = number;
                flag = 1;}
            else{
                m = m * 10 + number;}
        }
        else{
            m = m + pow(0.1, exp_number) * number;
            exp_number = exp_number + 1;
            flag = 0;
        }
    //labelString = [NSString stringWithFormat:@"%f",m];
    }

- (void)Button0{
        if(flag==0){
            m = 0;
            flag=1;}
        else{
            m = m * 10 + 0;}

}

- (void)Plus{
    switch (calc) {
        case 0:
            result = m;
            m=0;
            break;
        case 1:
            result = result + m;
            m = 0;
            break;
        case 2:
            result = result - m;
            m = 0;
            break;
        case 3:
            result = result * m;
            m = 0;
            break;
        case 4:
            result = result / m;
            m = 0;
            break;
            
        default:
            break;
    }
    calc = 1;
    flag = 0;
    exp_number = 0;

    
}

- (void)Minus{
    switch (calc) {
        case 0:
            //[[self Label] setText:[ NSString stringWithFormat:@"%g",m]];
            result = m;
            m = 0;
            break;
        case 1:
            result = result + m;
            m = 0;
            break;
        case 2:
            result = result - m;
            m = 0;
            break;
        case 3:
            result = result * m;
            m = 0;
            break;
        case 4:
            result = result / m;
            m = 0;
            break;
        default:
            break;
    }
    calc = 2;
    flag = 0;
    exp_number = 0;
}

- (void)Times{
    switch (calc) {
        case 0:
            flag = 0;
            result = m;
            m = 0;
            break;
        case 1:
            result = result + m;
            flag = 0;
            m = 0;
            break;
        case 2:
            result = result - m;
            flag = 0;
            m = 0;
            break;
        case 3:
            result = result * m;
            flag = 0;
            m = 0;
            break;
        case 4:
            result = result / m;
            flag = 0;
            
            break;
            
        default:
            break;
    }
    calc = 3;
    flag = 0;
    exp_number = 0;
}

- (void)Devided{
    switch (calc) {
        case 0:
            flag = 0;
            result = m;
            break;
        case 1:
            result = result + m;
            flag = 0;
            break;
        case 2:
            result = result - m;
            flag = 0;
            break;
        case 3:
            result = result * m;
            flag = 0;
            break;
        case 4:
            result = result / m;
            flag=0;
            break;
            
        default:
            break;
    }
        calc = 4;
        flag = 0;
        exp_number = 0;
}

-(void)CLEAR{
    m=0;
    result=0;
    n=0;
    flag=0;
    calc=0;
    exp_number=0;
}

-(void)puramai{
    m = 0 - m;
    flag = 1;
}

- (void)Ikoru{
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
}

- (void)shousuutenn{
    exp_number = 1;

    
}

@end
