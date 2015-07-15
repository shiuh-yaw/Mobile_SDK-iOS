Mobile SDK 4.0.6.2 iOS
==================

<h3>Screenshots</h3>
<img src=https://cloud.githubusercontent.com/assets/8925841/7957755/71afa55e-0a1c-11e5-8b4c-5b0e01b1eb63.png height=300>
<img src=https://cloud.githubusercontent.com/assets/4816292/5699854/62cde0a2-9a6c-11e4-8fae-d59e9590e912.jpg height=300>
<img src=https://cloud.githubusercontent.com/assets/4816292/5699853/62cb8064-9a6c-11e4-9aac-a16ef28703ed.jpg height=300>

Updates on 2015/06/15
- Fixed Bug
 - Invalid Headers.
 - Invalid amount.

Updates on 2015/06/12
- Added swift integration example
- Fixed Bug 
 - Add credit card always failed
 - When turn on debug mode, set mp_navigation_bar_tint_color will crash

Updates on 2015/06/03
- Added secure mode option. 
- Added receipt option (for cash channel).
- Update localised text
- Fixed Bug
 - Month & year option a bit off set
 - if didn’t dismiss the keyboard, the value won’t update.
 - channel selection page didn’t rotate.

Updates on 2015/03/18
- fixed bug
 - access denied when using language other than english.
 - error message "Invalid Parameter Requested" when using language other than english.
 - channel MOLWallet crash.


Updates on 2015/02/17
- fixed bug
 - channel cash crash after pressing AlertView "ok" button

Updates on 2015/02/13
- fixed bug
 - cash channel (7-11) returning different channel.
 - cash channel (7-11) showing json in the background
- mp_channel_editing added (In order to preselect channel but the user still able to choose channel, this is what you need).


Updates on 2015/01/23
- added MOLWallet channel support. (see MOLPay_SDK_iOS_4.0.4.pdf chapter 4)

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

Configure Navigation bar color
---
Change the color of the navigation by adding field mp_navigation_bar_tint_color together with the desired color.

Example Red Navigation Bar:
```
mp_navigation_bar_tint_color:[UIColor redColor]
```
<img src=https://cloud.githubusercontent.com/assets/8925841/7975896/52b64cd6-0aa6-11e5-8c0b-81f735e82569.png height=200>

Example Dark Blue Navigation Bar:
```
mp_navigation_bar_tint_color:[UIColor colorWithRed:0.05f green:0.11 blue:0.28 alpha:1.0]
```
<img src=https://cloud.githubusercontent.com/assets/8925841/7975895/51dbf25c-0aa6-11e5-8fcc-a9b19ee6996c.png height=200>

Example Dark Green Navigation Bar:
```
mp_navigation_bar_tint_color:[UIColor colorWithRed:0.15f green:0.28 blue:0.13 alpha:1.0]
```
<img src=https://cloud.githubusercontent.com/assets/8925841/7975894/518c9f0e-0aa6-11e5-8d05-a56e3698db6b.png height=200>


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
