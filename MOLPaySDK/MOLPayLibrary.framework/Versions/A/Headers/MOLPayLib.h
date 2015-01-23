//
//  MOLPayLib.h
//  MOLPayLib
//
//  Created by Wilwe on 2/4/13.
//  Copyright (c) 2013 Wilwe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PConstant.h"

@protocol MOLPayDelegate;

@interface MOLPayLib : NSObject

@property (nonatomic, strong) id <MOLPayDelegate> delegate;

- (id)initWithTarget:(id<MOLPayDelegate>)delegate andPaymentDetails:(NSDictionary *)paymentDetails;

/**
 Load MOLPay SDK
 */
- (void)loadMOLPaySDK;

/**
 Get MOLPay SDK Version
 */
+ (NSString *)MOLPaySDKVersion;

/**
 @abstract Call this method from the [UIApplicationDelegate application:openURL:sourceApplication:annotation:] method of the AppDelegate for your app. It should be invoked for the proper processing of responses during interaction with the native MOLWallet app .
 */
+ (BOOL)handleOpenURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication;

/**
 Used for merchant to  check payment result by providing their details.
 
 @param transactionInfo 
 required to pass merchant ID, transaction ID, amount, & verification key.
 
 Transaction Info should include this key&value:
 @code
 NSDictionary * transactionInfo = {
                                     mp_merchant_ID      :@"Merchant ID",
                                     mp_transaction_id   :@"Transaction ID",
                                     mp_amount           :@"amount",
                                     mp_verification_key :@"Verification Key"
                                   }

 MOLPayLib *molpay = [MOLPayLib new];
 molpay.delegate = self;
 
 [molpay requestPaymentResult:transactionInfo];
 @endcode
 */
- (void)requestPaymentResult:(NSDictionary *)transactionInfo;

/**
 Starting from MOLPay SDK 4.0.3,
 To simplify the SDK implementation,this method will no longer be used.
 
 @warning This method has been deprecated in favor of `-loadMOLPaySDK`.
 */
- (void)authenticate DEPRECATED_ATTRIBUTE;

/**
 Starting from MOLPay SDK 4.0.3,
 To simplify the SDK implementation,this method will no longer be used.
 
 @warning This method has been deprecated in favor of `-loadMOLPaySDK`.
 */
- (void)requestPayment DEPRECATED_ATTRIBUTE;

/**
 Starting from MOLPay SDK 4.0.3, 
 To simplify the SDK implementation,this method will no longer be used.
 
 @warning This method has been deprecated in favor of `-loadMOLPaySDK`.
 */
- (BOOL)Authetication_MachantID:(NSString *)Merchant_id Verification_Phrase:(NSString *)VerifiedPhrase
                       app_name:(NSString *)AppName DEPRECATED_ATTRIBUTE;


/**
 To simplify the SDK implementation,this method will no longer be used.
 @warning This method has been deprecated in favor of `-requestPayment`.
 */
- (BOOL)Payment_amount:(NSString *)Amount
               orderid:(NSString *)orderID
               country:(NSString *)Country
                   cur:(NSString *)Currency
           merchant_id:(NSString *)MerchantID
                 vcode:(NSString *)Vcode
               channel:(NSString *)channel
             bill_name:(NSString *)billName
            bill_email:(NSString *)billEmail
           bill_mobile:(NSString *)billMobile
              app_name:(NSString *)appName
             bill_desc:(NSString *)billDesc
               msgType:(NSString *)msg DEPRECATED_ATTRIBUTE;
@end

@protocol MOLPayDelegate <NSObject>
@optional
-(void)PaymentDetailTransactionID:(NSString *)txn_ID
                           amount:(NSString *)amount
                      status_code:(NSString *)statusCode
                         err_desc:(NSString *)errorDescription
                         app_code:(NSString *)appsCode
                           chksum:(NSString *)checkSum;

- (void)paymentRequestSuccessWithPaymentDetails:(NSDictionary *)paymentDetailDict;
- (void)paymentRequestFailedWithErrorDescription:(NSDictionary *)errorDescription;
- (void)resultRequestSuccessWithPaymentDetails:(NSDictionary *)paymentDetailsDict;
- (void)resultRequestFailedWithErrorDescription:(NSDictionary *)paymentDetailsDict;
@end
