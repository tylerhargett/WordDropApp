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
}

-(id)init;

-(void)receiveLetter:(char) c;

-(char)giveLetter:(int) pos;

@end
