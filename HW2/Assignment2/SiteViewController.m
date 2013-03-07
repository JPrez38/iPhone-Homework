//
//  SiteViewController.m
//  Assignment2
//
//  Created by Jacob Preston on 2/27/13.
//  Copyright (c) 2013 Jacob Preston. All rights reserved.
//

#import "SiteViewController.h"
#import "SiteValue.h"

@interface SiteViewController ()
    

@end

@implementation SiteViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    _login = [[NSMutableArray alloc] init];
    
    SiteValue *gmail = [SiteValue siteValueWithUsername:@"Hello" andPassword:@"Jacob" andWebsite:@"gmail"];
    SiteValue *nyu = [SiteValue siteValueWithUsername:@"JPREZ" andPassword:@"helloworld" andWebsite:@"nyu"];
    SiteValue *facebook = [SiteValue siteValueWithUsername:@"jacobo" andPassword:@"preston" andWebsite:@"facebook"];
    SiteValue *twitter = [SiteValue siteValueWithUsername:@"jprez" andPassword:@"password" andWebsite:@"twitter"];
    SiteValue *amazon = [SiteValue siteValueWithUsername:@"jac" andPassword:@"ob" andWebsite:@"amazon"];
    SiteValue *yahoo = [SiteValue siteValueWithUsername:@"packerfan" andPassword:@"bro" andWebsite:@"yahoo"];
    SiteValue *tumblr = [SiteValue siteValueWithUsername:@"tumble" andPassword:@"around" andWebsite:@"tumblr"];
    
    
    
    [_login addObject:gmail];
    [_login addObject:nyu];
    [_login addObject:facebook];
    [_login addObject:twitter];
    [_login addObject:amazon];
    [_login addObject:yahoo];
    [_login addObject:tumblr];
    _current = 0;
    _userName.text= [[_login objectAtIndex:_current]  getUsername];
    _password.text= [[_login objectAtIndex:_current]  getPassword];
    _webSite.text= [[_login objectAtIndex:_current]  getWebsite];
    _count.text= [[_login objectAtIndex:_current] getCount];
    _maxLength=[_login count];
    _slider.maximumValue=_maxLength-1;
    
	// Do any additional setup after loading the view, typically from a nib.
}

+(NSMutableArray*) myArray
{
    static NSMutableArray* theValue = nil;
    {
        if (theValue == nil)
        {
            theValue = [[NSMutableArray alloc] init];
        }
    }
    return theValue;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textEntered:(UITextField *)sender {
}

- (IBAction)buttonPushed:(UIButton *)sender {
}

- (IBAction)textFieldDoneEditing:(id)sender{
    [sender resignFirstResponder];
}

- (IBAction)incrementCount:(UIButton *)sender {
    [[_login objectAtIndex:_current] incrementCount];
    _count.text= [[_login objectAtIndex:_current] getCount];
}

- (IBAction)forward:(UIButton *)sender {
    _current=_current+1;
    if (_current >= _maxLength){
        _current=0;
    }
    _userName.text= [[_login objectAtIndex:_current]  getUsername];
    _password.text= [[_login objectAtIndex:_current]  getPassword];
    _webSite.text= [[_login objectAtIndex:_current]  getWebsite];
    _count.text= [[_login objectAtIndex:_current] getCount];
   
}

- (IBAction)add:(UIButton *)sender {
    _maxLength=_maxLength+1;
    _slider.maximumValue=_maxLength-1;
    SiteValue *newsite = [SiteValue siteValueWithUsername:_userName.text andPassword:_password.text andWebsite:_webSite.text];
    [_login addObject:newsite];
    
}

- (IBAction)backward:(UIButton *)sender {
    _current=_current-1;
    if (_current < 0){
        _current=_maxLength-1;
    }
    _userName.text= [[_login objectAtIndex:_current]  getUsername];
    _password.text= [[_login objectAtIndex:_current]  getPassword];
    _webSite.text= [[_login objectAtIndex:_current]  getWebsite];
    _count.text= [[_login objectAtIndex:_current] getCount];

}

- (IBAction)scroll:(UISlider *)sender {
    int progress = round(sender.value);
    _userName.text= [[_login objectAtIndex:progress]  getUsername];
    _password.text= [[_login objectAtIndex:progress]  getPassword];
    _webSite.text= [[_login objectAtIndex:progress]  getWebsite];
    _count.text= [[_login objectAtIndex:progress] getCount];
    
}
- (IBAction)backgroundTap:(id)sender {
    [self.webSite resignFirstResponder];
    [self.userName resignFirstResponder];
    [self.password resignFirstResponder];
    [self.count resignFirstResponder];
}
@end
