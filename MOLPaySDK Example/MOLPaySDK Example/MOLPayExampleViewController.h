//
//  MOLPayExampleViewController.h
//  MOLPaySDK Example
//
//  Created by MOLPay on 5/16/14.
//  Copyright (c) 2014 MOLPay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MOLPayExampleViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *molpayLabel;
@property (weak, nonatomic) IBOutlet UILabel *versionLabel;
@property (weak, nonatomic) IBOutlet UITextView *resultTextView;

- (IBAction)payButton:(id)sender;

@end
