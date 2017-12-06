//
//  main.m
//  Prog15.3
//
//  Created by Tống Đăng Tình on 12/6/17.
//  Copyright © 2017 Tống Đăng Tình. All rights reserved.
//

// Basic string operations

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        
        NSString *myString1 = @"This is string A";
        NSString *myString2 = @"This is string B";
        NSString *res;
        
        NSComparisonResult compareResult;
        
        // Count the number of characters
        NSLog(@"Length of myString1: %lu",[myString1 length]);
        
        // Coppy one string to another
        res = [NSString stringWithString:myString1];
        NSLog(@"Coppy: %@",res);
        
        // Coppy one string to the end of another
        //(Noi 2 string voi nhau)
        myString2 = [myString1 stringByAppendingString : myString2];
        NSLog(@"Concatentation: %@ ", myString2 );
        
        // Test if 2 strings are equal
        if([myString1 isEqualToString:res]==YES)
            NSLog(@"myString1 = res");
        else
            NSLog(@"myString1 != res");
        
        // Tes if one string is  <, ==  or than another
        compareResult=[myString1 compare:myString2];
        if(compareResult ==NSOrderedAscending)
            NSLog(@"myString1 < myString2");
        else if(compareResult==NSOrderedSame )
            NSLog(@"myString1 = myString2");
        else
            NSLog(@"myString1 > myString2");
        
        
        // Convert a string to UPPER
        res = [myString1 uppercaseString];
        NSLog(@"Uppercase conversion: %s",[res UTF8String]);
        
        
        //convert a string o Lowercas
        res = [myString1 lowercaseString];
        NSLog(@"Lowercase conversion: %@",res);
        
        NSLog(@"Origin string:  %@",myString1);
        
    }
    return 0;
}
