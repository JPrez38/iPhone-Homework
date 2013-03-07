//
//  SiteValue.h
//  Assignment1
//
//  Created by Jacob Preston on 2/16/13.
//  Copyright (c) 2013 Jacob Preston. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SiteValue : NSObject

@property id username, password, website;
@property int count;


- (void) printSiteValue;
- (void) setCount;
- (void) incrementCount;
- (id) getUsername;
- (id) getPassword;
- (id) getWebsite;
- (id) getCount;

- (SiteValue*) initWithUsername: (NSString*) username
   andPassword: (NSString*) password
                     andWebsite: (NSString*) website;

+(SiteValue*) siteValueWithUsername: (NSString*) username
                        andPassword: (NSString*) password
                         andWebsite: (NSString*) website;



@end
