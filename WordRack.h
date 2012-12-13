//
//  WordRack.h
//  WordDrop
//
//  Created by Joe Hargett on 11/19/12.
//  Copyright (c) 2012 Tyler Hargett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tile.h"

@interface WordRack : NSObject
{
    Tile* rack[7];
    int numLetters;
}

-(id)init;

-(int)receiveLetter:(char) c;//return 1 = there is space. return 0 = no space.

-(char)giveLetter:(int) pos;

-(char*)submitWord;

@end
