//
//  main.m
//  Assignment1
//
//  Created by Jacob Preston on 2/15/13.
//  Copyright (c) 2013 Jacob Preston. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SiteValue.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        SiteValue *gmail = [SiteValue siteValueWithUsername:@"Hello" andPassword:@"Jacob"];
        SiteValue *nyu = [SiteValue siteValueWithUsername:@"JPREZ" andPassword:@"helloworld"];
        SiteValue *facebook = [SiteValue siteValueWithUsername:@"jacobo" andPassword:@"preston"];
        SiteValue *twitter = [SiteValue siteValueWithUsername:@"jprez" andPassword:@"password"];
        SiteValue *amazon = [SiteValue siteValueWithUsername:@"jac" andPassword:@"ob"];
        SiteValue *yahoo = [SiteValue siteValueWithUsername:@"packerfan" andPassword:@"bro"];
        SiteValue *tumblr = [SiteValue siteValueWithUsername:@"tumble" andPassword:@"around"];
        
        NSMutableDictionary *login = [NSMutableDictionary dictionary];
        
        [login setObject:gmail forKey:@"gmail"];
        [login setObject:nyu forKey:@"nyu"];
        [login setObject:facebook forKey:@"facebook"];
        [login setObject:twitter forKey:@"twitter"];
        [login setObject:amazon forKey:@"amazon"];
        [login setObject:yahoo forKey:@"yahoo"];
        [login setObject:tumblr forKey:@"tumblr"];
        
        
        for (NSString *key in login) {
            NSLog(@"For key %@:", key);
            [[login objectForKey:key] printSiteValue];
        }
        
        printf("\n");
        
        [login removeObjectForKey:@"twitter"];
        [login removeObjectForKey:@"facebook"];
        [login removeObjectForKey:@"tumblr"];
        
        for (NSString *key in login) {
            [[login objectForKey:key] incrementCount];
        }
        
        printf("\n");
        
        int i;
        for (i=0;i<3;i++){
            [[login objectForKey:@"amazon"] incrementCount];
        }
        [[login objectForKey:@"gmail"] incrementCount];
        [[login objectForKey:@"nyu"] incrementCount];
        
        for (NSString *key in login) {
            NSLog(@"For key %@:", key);
            [[login objectForKey:key] printSiteValue];
        }
        
        
    }
    return 0;
}

