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

//- (void)authenticate;
-(void) loadMOLPaySDK;
- (void) requestPaymentResult: (NSDictionary *) TransactionInfo;
/**
 Starting from MOLPay SDK 4.0, this method will be replace by `-authenticate`.
 @warning This method has been deprecated in favor of `-authenticate`.
 */
//- (BOOL)Authetication_MachantID:(NSString *)Merchant_id Verification_Phrase:(NSString *)VerifiedPhrase
//                       app_name:(NSString *)AppName DEPRECATED_ATTRIBUTE;

- (void)requestPayment;

/**
 Starting from MOLPay SDK 4.0, this method will be replace by `-requestPayment`.
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
-(void)resultRequestSuccessWithPaymentDetails:(NSDictionary *)paymentDetailsDict;
-(void)resultRequestFailedWithErrorDescription:(NSDictionary *)paymentDetailsDict;
@end
