Mobile SDK 4.0.3.9 iOS
==================
<h3>Screenshots</h3>
<img src=https://cloud.githubusercontent.com/assets/4816292/5699854/62cde0a2-9a6c-11e4-8fae-d59e9590e912.jpg height=300>
<img src=https://cloud.githubusercontent.com/assets/4816292/5699853/62cb8064-9a6c-11e4-9aac-a16ef28703ed.jpg height=300>


Updates on 2014/12/24
- fixed bug related to Hong leong bank channel.

Updates on 2014/12/15
- added support for escrow. (See MOLPay_SDK_iOS_4.0.3.8.pdf chapter 3.3.1)
	- mp_is_escrow
- fixed after closing maybank/cimb site, nothing happen
 


Updates on 2014/12/07
- added request payment result by order ID.

Updates on 2014/11/14
- fixed notification url not triggered for certain channel.
- card page showing weird loading.

Updates on 2014/11/11
- Fixed simulator 5s above & iOS device cannot build.
- When “editing option for basic info” is enabled, the delegate “-paymentRequestSuccessWithPaymentDetails:” will include this field
	- bill_name
	- bill_email
	- bill_desc
	- bill_mobile




Updates on 2014/10/17
- fixed placeholder color for editable field not in grey colour
- update for placeholder text



Updates on 2014/09/29
- added option to customise the navigation bar tint colour
- added card format while editing card number.
- fixed card tokeniser showing fail page
- fixed missing header

Updates on 2014/09/25

- added editing option for basic info(name, email, mobile & description)
- added keyboard toolbar to make the editing more user friendly.
- added new method sdk version checking.
- fixed CIMB channel showing blank page.
- fixed missing transaction ID after.

Updates on 2014/05/16

- New authentication method implemented
- Native app UI for credit card payment
- Secure 1-click payment (tokenization) supported

Installations
---
Please refer to MOLPay SDK iOS pdf 

Prerequisites
---
1. MOLPay merchant ID
2. Merchant App Name
3. Verify Key
4. API username
5. API password

Note: Please get these information from sales or support team

Issues
---
Submit issue to this repository or email to our support@molpay.com

Support
---
Merchant Technical Support / Customer Care : support@molpay.com <br>
Sales/Reseller Enquiry : sales@molpay.com <br>
Marketing Campaign : marketing@molpay.com <br>
Channel/Partner Enquiry : channel@molpay.com <br>
Media Contact : media@molpay.com <br>
R&D and Tech-related Suggestion : technical@molpay.com <br>
Abuse Reporting : abuse@molpay.com
