//
//  NSString+PigLatinization.m
//  PigLatin
//
//  Created by Daniel Grosman on 2017-11-03.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import "NSString+PigLatinization.h"

@implementation NSString (PigLatinization)

-(NSString *)stringByPigLatinization {
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString: @"aeiou"];
    NSArray *englishInput = [self componentsSeparatedByString:@" "];
    NSMutableArray *pigLatinPhrase = [[NSMutableArray alloc]init];
    
    
    for (NSString * word in englishInput) {

        NSRange consonantsRange = [word rangeOfCharacterFromSet:vowels];
        if (consonantsRange.location != NSNotFound) {
        
        NSString *firstLetters = [word substringToIndex:consonantsRange.location];
        NSString *lastLetters = [word substringFromIndex:consonantsRange.location];
        
        NSString *pigLatin = [NSString stringWithFormat:@"%@%@ay", lastLetters, firstLetters];
            [pigLatinPhrase addObject:pigLatin];
        }
        else {
            NSString *noVowels = [NSString stringWithFormat:@"%@ay", word];
            [pigLatinPhrase addObject:noVowels];
        }
        
    }
    
    
    NSString *pigLatinStringPhrase = [pigLatinPhrase componentsJoinedByString:@" "];
    return pigLatinStringPhrase;
}



@end
