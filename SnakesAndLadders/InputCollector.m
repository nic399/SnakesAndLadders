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
            self.history = [[NSMutableArray alloc] initWithObjects:@"No history", nil];
            self.newest = 2;
            self.numOfHistoryItemsToShow = 3;
        }
        return self;
    }
    
    -(NSString*) inputForPrompt:(NSString *)promptString {
        NSLog(@"%@", promptString);
        
        char inputChar[511];
        fgets(inputChar, 511, stdin);
        self.userInput =    [[NSString stringWithCString:inputChar encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        self.newest = (self.newest+1)%self.numOfHistoryItemsToShow;
        //[self.history replaceObjectAtIndex:self.newest withObject:self.userInput];
        if ([self.history count] > self.numOfHistoryItemsToShow) {
            [self.history removeLastObject];
        }
        [self.history insertObject:self.userInput atIndex:0];
        //[self.history insertObject:self.userInput atIndex:self.newest];
        return self.userInput;
    }
    
    -(void) printHistory {
        int oldest= (self.newest+1)%self.numOfHistoryItemsToShow;
        for (int i = 0; i < self.numOfHistoryItemsToShow; i++) {
            NSLog(@"%@", self.history[oldest]);
            oldest = (oldest+1)%self.numOfHistoryItemsToShow;
        }
        for (NSString *str in self.history) {
            NSLog(@"%@",str);
        }
    }
    
@end
