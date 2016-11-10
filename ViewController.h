//
//  ViewController.h
//  1stCalculator
//
//  Created by GolDisColD on 13.10.16.
//  Copyright © 2016 JMCorp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    IBOutlet UILabel *displayLabel;
    
    double x, y; // x- записываем значения, которые набираем / y- записываем значения, которые были перед этим набраны
    
    NSInteger operation;      // ? все наши операции
    
    BOOL interFlag, yFlag;    // ??
}

- (IBAction)claerAll:(id)sender;
- (IBAction)clear:(id)sender;

- (IBAction)numbers:(id)sender;
- (IBAction)operations:(id)sender;

- (IBAction)inverceSign:(id)sender;




@end

