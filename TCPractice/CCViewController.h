//
//  CCViewController.h
//  TCPractice
//
//  Created by Tim Wu on 4/10/13.
//  Copyright (c) 2013 com.eudemic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCViewController : UIViewController {
    
    IBOutlet UILabel *costLabel;
    
    IBOutlet UILabel *perPerson;
    IBOutlet UITextField *SharePerson;
    IBOutlet UITextField *tipPercent;
    IBOutlet UITextField *costofMeal;

    IBOutlet UIBarButtonItem *doneButton;
}
@end
