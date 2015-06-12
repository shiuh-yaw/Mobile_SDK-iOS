//
//  ViewController.m
//  MOLPay Example
//
//  Created by Arif Jusoh on 11/10/14.
//  Copyright (c) 2014 MOLPay. All rights reserved.
//

#import "ViewController.h"
#import <MOLPayLibrary/MOLPayLib.h>

@interface ViewController () <MOLPayDelegate>
@property (nonatomic, weak) IBOutlet UIButton * payButton;
@property (weak, nonatomic) IBOutlet UILabel *molpayLabel;
@property (weak, nonatomic) IBOutlet UILabel *versionLabel;
@property (weak, nonatomic) IBOutlet UITextView *resultTextView;

- (IBAction)payButton:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.versionLabel.text = [MOLPayLib MOLPaySDKVersion];
    [self.payButton setBackgroundImage:[[UIImage imageNamed:@"MOLPay.bundle/defaultButton"]
                                        resizableImageWithCapInsets:UIEdgeInsetsMake(14, 13, 16, 14)] forState:UIControlStateNormal];
}

-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
      mp_app_name   : @"appname",                //(Type: NSString)
      mp_verification_key: @"verifycationkey",  //(Type: NSString)
      
      mp_order_ID:@"orderID",                   //(Type: NSString)
      mp_amount  :[NSString stringWithFormat:@"%.2f", 1.1f],//(Type: Float)
      
      mp_currency: @"currency",                 //(Type: NSString)
      mp_channel : @"channel",                  //(Type: NSString)
      mp_country : @"country",                  //(Type: NSString)
      
      mp_bill_name  : @"name",                  //(Type: NSString)
      mp_bill_email : @"email",                 //(Type: NSString)
      mp_bill_mobile: @"mobile",                //(Type: NSString)
      mp_bill_description: @"Description",      //(Type: NSString)
      
      mp_is_escrow:       [NSNumber numberWithBool:NO], //Enable escrow

      mp_channel_editing: [NSNumber numberWithBool:YES], //enable channel editing
      mp_editing_enabled: [NSNumber numberWithBool:YES],
      mp_debug_mode:      [NSNumber numberWithBool:YES], //please disable before release

      mp_navigation_bar_tint_color:[UIColor colorWithRed:0.5f //customize the navigation bar tint color
                                                   green:0.06
                                                    blue:0.49
                                                   alpha:1.0],
      
      mp_url_scheme:@"URLSCHEME"               //(Type: NSString)
      };
    
    
    MOLPayLib *molpay=[[MOLPayLib alloc] initWithTarget:self
                                      andPaymentDetails: paymentRequestDict];
    
    [molpay loadMOLPaySDK];

    /* ------------------------
     * Request payment result
     * ------------------------
     *
     * For request payment result by order ID, 
        replace mp_transaction_id with mp_order_ID.
     *
     
     MOLPayLib *molpay=[[MOLPayLib alloc] initWithTarget:self
                                      andPaymentDetails:nil];
    
     [molpay requestPaymentResult:@{
                                    mp_order_ID:@"order id",
                                    mp_transaction_id:@"transaction id",
                                    mp_merchant_ID:@"merchant id",
                                    mp_amount:[NSString stringWithFormat:@"%.2f", 1.0f],
                                    mp_verification_key:@"verify key"
                                    }];
     */
}

//-------------------------
#pragma mark - MOLPayLib Delegate
//-------------------------
-(void)paymentRequestSuccessWithPaymentDetails:(NSDictionary *)paymentDetailsDict
{
    /*
     Result:
     
     txn_ID         - Numeric (Integer)
     paydate        - Int
     amount         - Numeric (Float)
     status_code    - Numeric
     channel        - Alphanumeric
     err_desc       - String
     app_code       - Alphanumeric
     msgType        - Alphanumeric
     
     */
    self.resultTextView.text = [NSString stringWithFormat:@"paymentDetailsDict:%@",paymentDetailsDict];
}

-(void)paymentRequestFailedWithErrorDescription:(NSDictionary *)errorDescription
{
    self.resultTextView.text = [NSString stringWithFormat:@"errorDescription:%@",errorDescription];
}

- (void)resultRequestSuccessWithPaymentDetails:(NSDictionary *)paymentDetailsDict{
    self.resultTextView.text = [NSString stringWithFormat:@"paymentDetailsDict:%@",paymentDetailsDict];

}
- (void)resultRequestFailedWithErrorDescription:(NSDictionary *)paymentDetailsDict{
    self.resultTextView.text = [NSString stringWithFormat:@"errorDescription:%@",paymentDetailsDict];
}


@end
