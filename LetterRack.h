//
//  LetterRack.h
//  WordDrop
//
//  Created by Joe Hargett on 11/18/12.
//  Copyright (c) 2012 Tyler Hargett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tile.h"

@interface LetterRack : NSObject
{
    Tile* rack[7];
    int numLetters;
}

-(id)init;

-(int)receiveLetter:(char) c;

-(char)giveLetter:(int) pos;

@end
