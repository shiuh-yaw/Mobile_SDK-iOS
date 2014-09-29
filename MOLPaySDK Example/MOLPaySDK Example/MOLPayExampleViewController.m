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
@property (nonatomic, weak) IBOutlet UIButton * payButton;
@end

@implementation MOLPayExampleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.versionLabel.text = [MOLPayLib MOLPaySDKVersion];
    [self.payButton setBackgroundImage:[[UIImage imageNamed:@"MOLPay.bundle/defaultButton"]
                                        resizableImageWithCapInsets:UIEdgeInsetsMake(14, 13, 16, 14)] forState:UIControlStateNormal];
    self.payButton.titleLabel.textColor = [UIColor whiteColor];
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
      mp_username: @"username",                 //(Type: NSString)
      mp_password: @"password",                 //(Type: NSString)
      
      mp_merchant_ID: @"merchantid",            //(Type: NSString)
      mp_app_name   :@"appname",                //(Type: NSString)
      mp_verification_key: @"verifycationkey",  //(Type: NSString)
      
      mp_order_ID:@"orderID",                   //(Type: NSString)
      mp_amount  :[NSString stringWithFormat:@"%.2f", 0.0f],//(Type: Float)
      
      mp_currency: @"currency",                 //(Type: NSString)
      mp_channel : @"channel",                  //(Type: NSString)
      mp_country : @"country",                  //(Type: NSString)
      
      mp_bill_name  : @"name",                  //(Type: NSString)
      mp_bill_email : @"email",                 //(Type: NSString)
      mp_bill_mobile: @"mobile",                //(Type: NSString)
      mp_bill_description: @"Description",      //(Type: NSString)
      
      mp_editing_enabled: [NSNumber numberWithBool:YES],
      mp_debug_mode:      [NSNumber numberWithBool:YES], //please disable before release
      mp_navigation_bar_tint_color:[UIColor colorWithRed:0.5f //customize the navigation bar tint color
                                                   green:0.06
                                                    blue:0.49
                                                   alpha:1.0]

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
    self.resultTextView.text = [NSString stringWithFormat:@"paymentDetailsDict:%@",paymentDetailsDict];
}

-(void)paymentRequestFailedWithErrorDescription:(NSDictionary *)errorDescription
{
    self.resultTextView.text = [NSString stringWithFormat:@"errorDescription:%@",errorDescription];
}
@end
