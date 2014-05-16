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
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)payButton:(id)sender {
    
    
    NSDictionary * paymentRequestDict =
    @{
      mp_amount:[NSString stringWithFormat:@"%.2f",amount],
      mp_order_ID: (Type: NSString),
      mp_country: (Type: NSString),
      mp_currency: (Type: NSString),
      mp_merchant_ID: (Type: NSString),
      mp_verification_key: (Type: NSString),
      mp_username: (Type: NSString),
      mp_password: (Type: NSString),
      mp_bill_name: (Type: NSString),
      mp_channel: (Type: NSString),
      mp_bill_email: (Type: NSString),
      mp_bill_mobile: (Type: NSString),
      mp_app_name: (Type: NSString),
      mp_bill_description: (Type: NSString),
      mp_debug_mode:[NSNumber numberWithBool:YES] //please disable before release
      };
    
    MOLPayLib *molpay=[[MOLPayLib alloc] initWithTarget:self andPaymentDetails:paymentRequestDict];
    
    [molpay loadMOLPaySDK];
    
}

#pragma mark - MOLPayLib Delegate
-(void)paymentRequestSuccessWithPaymentDetails:(NSDictionary *)paymentDetailsDict
{
    NSLog(@"paymentDetailsDict:%@",paymentDetailsDict);
}

-(void)paymentRequestFailedWithErrorDescription:(NSDictionary *)errorDescription
{
    NSLog(@"errorDescription:%@",errorDescription);
}
@end