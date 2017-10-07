//
//  InputCollector.h
//  ContactListApp
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property (nonatomic, strong,readwrite) NSString* userInput;
@property (nonatomic, strong, readwrite) NSMutableArray* history;
@property (nonatomic, assign, readonly) int numOfHistoryItemsToShow;

-(NSString*) inputForPrompt: (NSString *) promptString;
-(void) printHistory;

@end
