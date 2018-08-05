//
//  NSString+PigLatinization.m
//  IgLatinPay
//
//  Created by Kit Clark-O'Neil on 2018-08-04.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import "NSString+PigLatinization.h"

@implementation NSString (PigLatinization)

-(NSString*)stringByPigLatinization{

    NSCharacterSet *vowelSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    NSMutableString *pigWord;
    //Initiate an array of words from self
    NSMutableArray *wordArray = [[self componentsSeparatedByString:@" "] mutableCopy];
    
    //Begin to iterate over array
    for (int i = 0; i < wordArray.count; i++)
    {
        //Initialize initial word, final word, and final letter
        NSMutableString *preWord = [wordArray objectAtIndex:i];
        
        NSRange range = [preWord rangeOfCharacterFromSet:vowelSet];
        
        if (range.location == 0)
        {
            [preWord appendString:@"yay"];
        }
        else
        {
            NSRange consonantRange = NSMakeRange (0, range.length);
            NSRange coreWord = NSMakeRange (range.location, (preWord.length - consonantRange.length));
            pigWord = [NSMutableString stringWithFormat:@"%@%@yay", [preWord substringWithRange:coreWord], [preWord substringWithRange:consonantRange]];
            
        }
        [wordArray replaceObjectAtIndex: i withObject:pigWord];
    }
    return [wordArray componentsJoinedByString:@" "];
}
@end
