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
    
    return self;
}

-(void)receiveLetter:(char) c{
    Tile* theTile = [[Tile alloc] initWithChar:(c)];
    
    for(int i = 0; i < 7; i++)
        if(rack[i].getLetter != '0'){
            rack[i] = theTile;
            return;
        }
    
    //if no open spots, do something here
    
    
}

-(char)giveLetter:(int) pos{
    
    return rack[pos].getLetter;
    
}

@end
