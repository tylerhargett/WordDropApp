//
//  Tile.h
//  WordDrop
//
//  Created by Patrick Dunshee on 11/18/12.
//  Copyright (c) 2012 Tyler Hargett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tile : NSObject
{
    int val;//score value
    int pos;//letter/word rack position
    char letter;
}

-(id)init;

-(id)initWithChar:(char) l;

-(id)initWithTile:(Tile*) t;

-(void)setLetter:(char) c;

-(char)getLetter;

-(int)getVal;

-(void)setPos:(int) p;

-(int)getPos;

@end
