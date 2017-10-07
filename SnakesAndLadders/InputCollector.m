//
//  InputCollector.m
//  ContactListApp
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector
    
    -(instancetype)init {
        self = [super init];
        if (self) {
            self.history = [[NSMutableArray alloc] initWithObjects:@"Application Opened", nil];
            _numOfHistoryItemsToShow = 10;
        }
        return self;
    }


-(NSString *)caseInsensitiveInputForPrompt:(NSString *)userInput {
    NSString *returnStr = [self inputForPrompt:userInput];
    returnStr = [returnStr lowercaseString];
    return returnStr;
}


    -(NSString*) inputForPrompt:(NSString *)promptString {
        NSLog(@"%@", promptString);
        
        char inputChar[511];
        fgets(inputChar, 511, stdin);
        self.userInput =    [[NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        if ([self.history count] > self.numOfHistoryItemsToShow) {
            [self.history removeLastObject];
        }
        [self.history insertObject:self.userInput atIndex:0];
        return self.userInput;
    }
    
    -(void) printHistory {
        for (NSString *str in self.history) {
            NSLog(@">  %@",str);
            if ([str isEqualToString:@"Application Opened"]) {
                break;
            }
        }
    }
    
@end
