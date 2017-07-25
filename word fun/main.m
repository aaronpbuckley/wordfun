//
//  main.m
//  word fun
//
//  Created by Aaron Buckley on 7/24/17.
//  Copyright © 2017 Aaron Buckley. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char inputChars[255];
        printf("input a string: ");
        fgets(inputChars, 255, stdin);
        printf("your string is %s\n", inputChars);
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSLog(@"input was: %@", inputString);
        
        NSLog(@"Uppercase: %@",[inputString uppercaseString]);
        NSLog(@"Lowercase: %@",[inputString lowercaseString]);
        NSLog(@"Convert to number(?) %d",[inputString intValue]);
        NSLog(@"Canadianize: %@",[inputString stringByAppendingString:@", eh?"]);
        if ([inputString hasSuffix:@"!"])
        {
            NSLog(@"Woah, calm down!");
        }
        else if ([inputString hasSuffix:@"?"])
        {
            NSLog(@"I don't know");
        }
        else NSLog(@"%@", inputString);
        NSLog(@"%@",[inputString stringByReplacingOccurancesOfString:@" " withString:@"-"]);
    }
    return 0;
}
