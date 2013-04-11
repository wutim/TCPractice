//
//  CCViewController.m
//  TCPractice
//
//  Created by Tim Wu on 4/10/13.
//  Copyright (c) 2013 com.eudemic. All rights reserved.
//

#import "CCViewController.h"

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    
    [self recalc];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//In the guide.
//Recalc Function Goes Here
-(void)recalc {
    
}
- (IBAction)doneButton:(id)sender {
    NSLog(@"%0.2f",[tipPercent.text floatValue]);
    
    [tipPercent resignFirstResponder];
    [costofMeal resignFirstResponder];
    [SharePerson resignFirstResponder];
    
    if ([tipPercent.text floatValue] < 20.0f){
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle: @"Tip Warning"
                              message: @"You should tip more than 20%"
                              delegate: nil
                              cancelButtonTitle:@"Fine"
                              otherButtonTitles:nil];
        // tipPercentField.text = 20
        [alert show];
        
    }
    float bill = [costofMeal.text floatValue] + ( [costofMeal.text floatValue] * (.01f * [tipPercent.text floatValue]));
    float indiv = (bill / [SharePerson.text floatValue]);
    
    costLabel.text = [NSString stringWithFormat:@"%0.2f",bill];
    perPerson.text = [NSString stringWithFormat:@"%0.2f",indiv];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
