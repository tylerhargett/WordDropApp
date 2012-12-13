//
//  LetterRack.m
//  WordDrop
//
//  Created by Patrick Dunshee on 11/18/12.
//  Copyright (c) 2012 Tyler Hargett. All rights reserved.
//

#import "LetterRack.h"
#import "Tile.h"

@implementation LetterRack

-(id)init{
    self = [super init];
    
    for(int i = 0; i < 7; i++)
        rack[i] = [[Tile alloc] initWithChar:('0')];
    
    numLetters = 0;
    
    return self;
}

-(int)receiveLetter:(char) c{
    Tile* theTile = [[Tile alloc] initWithChar:(c)];
    
    for(int i = 0; i < 7; i++)
        if(rack[i].getLetter == '0'){
            rack[i] = theTile;
            numLetters++;
            return 1;
        }
    
    //if no open spots, return 0
    return 0;
    
}

-(char)giveLetter:(int) pos{
    
    char theLetter = rack[pos].getLetter;
    
    for(int i = pos; i < numLetters; i++)
        if(i != 6)
            rack[i] = rack[i+1];
        else 
            rack[i] = [[Tile alloc] initWithChar:('0')];
    
    numLetters--;
    
    //signal to UI here to redisplay the rack
    
    return theLetter;
    
}

@end
