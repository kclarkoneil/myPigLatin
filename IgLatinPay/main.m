//
//  main.m
//  IgLatinPay
//
//  Created by Kit Clark-O'Neil on 2018-08-04.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "NSString+PigLatinization.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here..
        
        InputHandler *test = [[InputHandler alloc] init];
        NSString *testy = [test getInput];
        NSLog(@"Hello, World!%@", [testy stringByPigLatinization]);
    }
    return 0;
}
