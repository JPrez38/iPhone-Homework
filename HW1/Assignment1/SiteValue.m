//
//  SiteValue.m
//  Assignment1
//
//  Created by Jacob Preston on 2/16/13.
//  Copyright (c) 2013 Jacob Preston. All rights reserved.
//

#import "SiteValue.h"

@implementation SiteValue

- (void) printSiteValue {
    NSLog(@"The Username is %@, the password is %@, times logged in is %d",_username,_password, _count);
}

- (void) setCount {
    _count=0;
}

- (void) incrementCount {
    _count++;
}


- (SiteValue*) initWithUsername: (NSString*) username
                    andPassword: (NSString*) password {
    self = [super init];
    
    if (self) {
        _username = username;
        _password = password;
        [self setCount];
    }
    
    return self;
    
}

+(SiteValue*) siteValueWithUsername: (NSString*) username
                        andPassword: (NSString*) password {
    SiteValue *temp = [[SiteValue alloc] initWithUsername:username andPassword:password];
    return temp;
}

@end
