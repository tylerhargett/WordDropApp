//
//  Tile.m
//  WordDrop
//
//  Created by Joe Hargett on 11/18/12.
//  Copyright (c) 2012 Tyler Hargett. All rights reserved.
//

#import "Tile.h"


@implementation Tile

-(id)init{
    self = [super init];
    val = -1;
    letter = NULL;
    pos = -1;
    
    return self;
}

-(id)initWithChar:(char) l{
    self = [super init];
    letter = l;
    val = -1;
    pos = -1;
    
    return self;
}

-(id)initWithTile:(Tile *)t{
    self = [super init];
    letter = [t getLetter];
    val = [t getVal];
    pos = 0;
    
    return self;
}

-(void)setLetter:(char)c{
    letter = c;
}

-(char)getLetter{
    return letter;
}

-(int)getVal{
    if(val ==-1)
        return val;
    
    switch (letter) {
        case 'A':
            val = 1;
            break;
        case 'B':
            val = 3;
            break;
        case 'C':
            val = 3;
            break;
        case 'D':
            val = 2;
            break;
        case 'E':
            val = 1;
            break;
        case 'F':
            val = 4;
            break;
        case 'G':
            val = 2;
            break;
        case 'H':
            val = 4;
            break;
        case 'I':
            val = 1;
            break;
        case 'J':
            val = 8;
            break;
        case 'K':
            val = 5;
            break;
        case 'L':
            val = 1;
            break;
        case 'M':
            val = 3;
            break;
        case 'N':
            val = 1;
            break;
        case 'O':
            val = 1;
            break;
        case 'P':
            val = 3;
            break;
        case 'Q':
            val = 10;
            break;
        case 'R':
            val = 1;
            break;
        case 'S':
            val = 1;
            break;
        case 'T':
            val = 1;
            break;
        case 'U':
            val = 1;
            break;
        case 'V':
            val = 4;
            break;
        case 'W':
            val = 4;
            break;
        case 'X':
            val = 8;
            break;
        case 'Y':
            val = 4;
            break;
        case 'Z':
            val = 10;
            break;
            
        default:
            val = -1;
            break;
            
    }
    
    return val;
    
}

-(void)setPos:(int)p{
    pos = p;
    
}

-(int)getPos{
    return pos;
}

@end
