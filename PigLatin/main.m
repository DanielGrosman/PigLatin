//
//  main.m
//  PigLatin
//
//  Created by Daniel Grosman on 2017-11-03.
//  Copyright © 2017 Daniel Grosman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"What would you like to translate?");
        char inputEnglishWord[100];
        fgets (inputEnglishWord, 100, stdin);
        NSString *englishWord = [[NSString alloc] initWithUTF8String:inputEnglishWord];
        englishWord = [englishWord stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
        
        
        
        NSString *word = englishWord;
        
        word = [word stringByPigLatinization];
        NSLog(@"The original phrase was %@, the pig latin version is %@", englishWord, word);
        

        
        
    }
    return 0;
}
