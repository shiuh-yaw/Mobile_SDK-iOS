//
//  MOLPayExampleViewController.m
//  MOLPaySDK Example
//
//  Created by MOLPay on 5/16/14.
//  Copyright (c) 2014 MOLPay. All rights reserved.
//

#import "MOLPayExampleViewController.h"
#import <MOLPayLibrary/MOLPayLib.h>

@interface MOLPayExampleViewController ()<MOLPayDelegate>

@end

@implementation MOLPayExampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.versionLabel.text = [MOLPayLib MOLPaySDKVersion];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    
    self.molpayLabel.center = CGPointMake(self.view.center.x, self.molpayLabel.center.y) ;
    self.versionLabel.center = CGPointMake(self.view.center.x, self.versionLabel.center.y) ;
}

//-------------------------
#pragma mark - Action
//-------------------------
- (IBAction)payButton:(id)sender {
    NSDictionary * paymentRequestDict =
    @{
      mp_username: (Type: NSString),
      mp_password: (Type: NSString),
      
      mp_merchant_ID: (Type: NSString),
      mp_app_name: (Type: NSString),
      mp_verification_key: (Type: NSString),
      
      mp_order_ID: (Type: NSString),
      mp_amount:[NSString stringWithFormat:@"%.2f", (Type: CGFloat)],
      
      mp_currency: (Type: NSString),
      mp_channel: (Type: NSString),
      mp_country: (Type: NSString),
      
      mp_bill_name: (Type: NSString),
      mp_bill_email: (Type: NSString),
      mp_bill_mobile: (Type: NSString),
      mp_bill_description: (Type: NSString),
      
      mp_editing_enabled: [NSNumber numberWithBool:YES],
      mp_debug_mode:[NSNumber numberWithBool:YES] //please disable before release
      };
    
    MOLPayLib *molpay=[[MOLPayLib alloc] initWithTarget:self
                                      andPaymentDetails:paymentRequestDict];
    
    [molpay loadMOLPaySDK];
    
}

//-------------------------
#pragma mark - MOLPayLib Delegate
//-------------------------
-(void)paymentRequestSuccessWithPaymentDetails:(NSDictionary *)paymentDetailsDict
{
    NSLog(@"paymentDetailsDict:%@",paymentDetailsDict);
    
    self.resultTextView.text = [NSString stringWithFormat:@"paymentDetailsDict:%@",paymentDetailsDict];
}

-(void)paymentRequestFailedWithErrorDescription:(NSDictionary *)errorDescription
{
    NSLog(@"errorDescription:%@",errorDescription);
    self.resultTextView.text = [NSString stringWithFormat:@"errorDescription:%@",errorDescription];

}
@end
