//
//  PublicConstant.h
//  MOLPayLibrary
//
//  Created by Arif Jusoh on 3/28/14.
//  Copyright (c) 2014 MOLPay Sdn Bhd. All rights reserved.
//

#ifndef MOLPayLibrary_PConstant_h
#define MOLPayLibrary_PConstant_h

#define MOLPAY_SDK_VERSION @"4.0.6.2"
#define mp_username         @"mp_username"
#define mp_password         @"mp_password"

#define mp_merchant_ID          @"mp_merchant_ID"
#define mp_verification_key     @"mp_verification_key"
#define mp_app_name             @"mp_app_name"

#define mp_molwallet_id     @"mp_molwallet_id"
#define mp_bill_name          @"mp_bill_name"
#define mp_bill_email         @"mp_bill_email"
#define mp_bill_mobile        @"mp_bill_mobile"
#define mp_bill_description   @"mp_bill_description"

#define mp_order_ID     @"mp_order_ID"
#define mp_amount       @"mp_amount"
#define mp_country      @"mp_country"
#define mp_currency     @"mp_currency"

#define mp_filter_value @"mp_filter_value"
#define mp_channel      @"mp_channel"
#define mp_debug_mode   @"mp_debug_mode"

#define mp_transaction_id   @"mp_transaction_id"
#define mp_status_code      @"mp_status_code"
#define mp_error_desc       @"mp_error_desc"
#define mp_check_sum        @"mp_check_sum"
#define mp_is_escrow        @"mp_is_escrow"

#define mp_is_secure    @"mp_is_secure"
/**
 Used by SDK to communicate with MOLWallet
 */
#define mp_url_scheme @"mp_url_scheme"

/** 
 Enable editing for name, email, mobile number & description
 */
#define mp_editing_enabled @"mp_editing_enabled"

/**
 Customizing Navigation UI
 */
#define mp_navigation_bar_tint_color    @"mp_navigation_bar_tint_color"

/**
 To allow user to choose different channel in MOLPay SDK
 */
#define mp_channel_editing @"mp_channel_editing"

/**
 Enable this to show receipt on every success/failed transaction
 */
#define mp_receipt_enabled @"mp_receipt_enabled"
#endif
