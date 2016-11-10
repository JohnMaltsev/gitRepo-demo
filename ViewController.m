//
//  ViewController.m
//  1stCalculator
//
//  Created by GolDisColD on 13.10.16.
//  Copyright © 2016 JMCorp. All rights reserved.
//

#import "ViewController.h"

enum {
    operationPlus   = 1001,
    operationMinus  = 1002,
    operationMult   = 1003,
    operatonDiv     = 1004
};

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}



- (void)calScreen {
    
    NSString *value = [NSString stringWithFormat:@"%g",x]; //метод calScreen выводит значение на экран
    [displayLabel setText: value];
    
}


- (IBAction)claerAll:(id)sender {
    
    x = 0;
    y = 0;
    
    interFlag = NO;
    yFlag = NO;
    
    [self calScreen];
    
}


- (IBAction)clear:(id)sender {
    
    x = 0;
    
    [self calScreen];
}


- (IBAction)numbers:(id)sender {
    
    if (interFlag) {
        y = x;
        x = 0;
        interFlag = NO;
    }
    
    x = (10.0f * x) + [sender tag]; //
    
    [self calScreen];
    
    // NSLog(@"%li", [sender tag]);//проверяем работают ли теги которые повесили на кнопки цифр
    
}

- (IBAction)operations:(id)sender {
    
    
    // NSLog(@"%li", operation); //проверяем работают ли теги которые повесили на кнопки операции
    
    if (yFlag && !interFlag) {
        
        switch (operation) {
                
            case operationPlus:
                x = y + x;
                break;
                
            case operationMinus:
                x = y - x;
                break;
                
            case operationMult:
                x = y * x;
                break;
                
            case operatonDiv:
                x = y / x;
                break;
                
            default:
                break;
        }
        
        /*
         if (operation == 1001) {
         x = y + x;             // x -= x; x *= x было раньше это тоже самое
         }
         
         if (operation == 1002) {
         x = y - x;
         }
         
         if (operation == 1003) {
         x = y * x;
         }
         
         if (operation == 1004) {
         x = y / x;
         }
         */
    }
    
    y = x;
    
    interFlag = YES;
    yFlag = YES;
    
    operation = [sender tag];
    
    [self calScreen];
    
}


- (IBAction)inverceSign:(id)sender {
    
    x = -x;
    
    [self calScreen];
    
}



@end
