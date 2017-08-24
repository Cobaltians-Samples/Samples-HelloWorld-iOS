//
//  ViewController.m
//  HelloWorld
//
//  Created by Sébastien Vitard on 20/04/2015.
//  Copyright (c) 2015 Cobaltians. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setDelegate:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark COBALT DELEGATE METHODS
#pragma mark -
/////////////////////////////////////////////////////////////////////////////////////////////////////////

- (BOOL)onUnhandledMessage:(NSDictionary *)message {
    return NO;
}

- (BOOL)onUnhandledEvent:(NSString *)event
                withData:(NSDictionary *)data
             andCallback:(NSString *)callback {
    if ([@"togglePTR" isEqualToString:event]
        && data != nil) {
        id value = [data objectForKey:@"value"];
        if (value != nil
            && [value isKindOfClass:[NSNumber class]]) {
            NSLog(@"togglePTR: %li", (long)[value integerValue]);
            
            self.isPullToRefreshEnabled = [value boolValue];
        }
        
        return YES;
    }
    
    return NO;
}

- (BOOL)onUnhandledCallback:(NSString *)callback
                   withData:(NSDictionary *)data {
    return NO;
}

@end
