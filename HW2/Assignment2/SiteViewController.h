//
//  SiteViewController.h
//  Assignment2
//
//  Created by Jacob Preston on 2/27/13.
//  Copyright (c) 2013 Jacob Preston. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SiteValue.h"

@interface SiteViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *webSite;
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *count;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property NSMutableArray *login;
@property int current;
@property int maxLength;
- (IBAction)textEntered:(UITextField *)sender;
- (IBAction)buttonPushed:(UIButton *)sender;
- (IBAction)backgroundTap:(id)sender;
- (IBAction)textFieldDoneEditing:(id)sender;
- (IBAction)incrementCount:(UIButton *)sender;
- (IBAction)forward:(UIButton *)sender;
- (IBAction)add:(UIButton *)sender;
- (IBAction)backward:(UIButton *)sender;
- (IBAction)scroll:(UISlider *)sender;



@end
