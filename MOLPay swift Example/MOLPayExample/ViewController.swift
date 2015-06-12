//
//  ViewController.swift
//  MOLPayExample
//
//  Created by Arif Jusoh on 6/11/15.
//  Copyright (c) 2015 MOLPay Sdn Bhd. All rights reserved.
//

import UIKit

class ViewController: UIViewController,MOLPayDelegate{

    @IBOutlet weak var payButton: UIButton!
    @IBOutlet weak var resultTextView: UITextView!
    @IBOutlet weak var versionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.versionLabel.text = MOLPayLib.MOLPaySDKVersion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- Actions
    @IBAction func payButtonPressed(){
        var paymentDetails = [
            mp_username:"",             //(Type: NSString)
            mp_password:"",             //(Type: NSString)

            mp_merchant_ID     :"",     //(Type: NSString)
            mp_verification_key:"",     //(Type: NSString)
            mp_app_name        :"",     //(Type: NSString)
            
            mp_order_ID:"order id",     //(Type: NSString)
            mp_amount  :"1.1",          //(Type: Float)
            
            mp_currency: "MYR",         //(Type: NSString)
            mp_channel:"multi",         //(Type: NSString)
            mp_country : "MY",          //(Type: NSString)

            mp_bill_name:"name",
            mp_bill_email:"email",
            mp_bill_mobile:"mobile",
            mp_bill_description: "MOLPay Example Description",

            mp_is_escrow:false,
            
            mp_channel_editing:true,
            mp_editing_enabled:true,
            mp_debug_mode:false,

            mp_navigation_bar_tint_color:UIColor(
                red: CGFloat(0.5),
                green: CGFloat(0.06),
                blue: CGFloat(0.49),
                alpha: CGFloat(1.0)
            ),
            mp_url_scheme:"URLSCHEME"
        ]
        
        
        var molpay: MOLPayLib = MOLPayLib(target: self, andPaymentDetails: paymentDetails)
        
        molpay.loadMOLPaySDK()
        
        /* ------------------------
        * Request payment result
        * ------------------------
        *
        * For request payment result by order ID,
        * replace mp_transaction_id with mp_order_ID.
        *
        
        var molpay: MOLPayLib = MOLPayLib(target: self, andPaymentDetails: paymentDetails)
        
        molpay.requestPaymentResult(
            [
                mp_order_ID:"order id",
                mp_transaction_id:"transaction id",
                mp_merchant_ID:"merchant id",
                mp_amount:"1.1",
                mp_verification_key:"verify key",
                mp_navigation_bar_tint_color:UIColor(
                    red: CGFloat(0.5),
                    green: CGFloat(0.06),
                    blue: CGFloat(0.49),
                    alpha: CGFloat(1.0)
                ),
                mp_receipt_enabled:true
            ])
        
        */

    }

    // MARK:- MOLPay Delegate Method
    func paymentRequestSuccessWithPaymentDetails(paymentDetailDict: [NSObject : AnyObject]!) {
        self.displayResultObject(paymentDetailDict)

    }
    func paymentRequestFailedWithErrorDescription(errorDescription: [NSObject : AnyObject]!) {
        self.displayResultObject(errorDescription)
    }

    func resultRequestSuccessWithPaymentDetails(paymentDetailsDict: [NSObject : AnyObject]!) {
        self.displayResultObject(paymentDetailsDict)
    }
    
    func resultRequestFailedWithErrorDescription(paymentDetailsDict: [NSObject : AnyObject]!) {
        self.displayResultObject(paymentDetailsDict)
    }

    // MARK:- Convenient method
    func displayResultObject(resultObj: [NSObject : AnyObject]!){
        var resultString : String = ""
        
        for (key, value) in resultObj{
            resultString = resultString.stringByAppendingString("\(key):\(value)\n")
        }
        
        self.resultTextView.text = resultString
    }
}

