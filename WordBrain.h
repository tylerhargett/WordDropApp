//
//  WordBrain.h
//  WordDrop
//
//  Created by Joe Hargett on 12/13/12.
//  Copyright (c) 2012 Tyler Hargett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tile.h"

@interface WordBrain : NSObject

-(id)init;

-(int)checkWord:(char*) word;

@end
