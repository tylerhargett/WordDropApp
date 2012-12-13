//
//  WordBrain.m
//  WordDrop
//
//  Created by Joe Hargett on 12/13/12.
//  Copyright (c) 2012 Tyler Hargett. All rights reserved.
//

#import "WordBrain.h"
#import "Tile.h"

@implementation WordBrain

-(id)init;
{
    return self;
}

-(int)checkWord:(char*) wordArr{
    
    int wordLength = (sizeof wordArr);
    int score = 0;
    Tile* word[7];
    
    //creating array of Tile* for convenience sake
    for(int i = 0; i < wordLength; i++)
        word[i] = [[Tile alloc] initWithChar:(*(wordArr+1))];
    for(int i = wordLength; i < 7; i++)
        word[i] = [[Tile alloc] initWithChar:('0')];
    
    
    //get length of the word and calculate the score of the word
    for(int i = 0; i < 7; i++)
        if(word[i].getLetter != '0'){
            wordLength++;
            score += word[i].getVal;
        }
        
    /*//turn the tiles into a char array
    char theWord[wordLength];
    for(int i = 0; i < wordLength; i++)
        theWord[wordLength] = word[i].getLetter;
    not needed in current implementation*/
    
    //convert the char array into an NSString
    NSString* stringWord;
    stringWord = [NSString stringWithCString:wordArr encoding:NSASCIIStringEncoding];
    
    //create the property list based on length of word
    NSArray* theWords;
    NSString* plistCatPath;
    switch (wordLength) {
        case 0:
            return 0;
        case 1:
            return 0;
        case 2:
            plistCatPath = [[NSBundle mainBundle] pathForResource:@"TwoWords" ofType:@"plist"];
            theWords = [NSMutableArray arrayWithContentsOfFile:plistCatPath];
            break;
        case 3:
            plistCatPath = [[NSBundle mainBundle] pathForResource:@"ThreeWords" ofType:@"plist"];
            theWords = [NSMutableArray arrayWithContentsOfFile:plistCatPath];
            break;
        case 4:
            plistCatPath = [[NSBundle mainBundle] pathForResource:@"FourWords" ofType:@"plist"];
            theWords = [NSMutableArray arrayWithContentsOfFile:plistCatPath];
            break;
        case 5:
            plistCatPath = [[NSBundle mainBundle] pathForResource:@"FiveWords" ofType:@"plist"];
            theWords = [NSMutableArray arrayWithContentsOfFile:plistCatPath];
            break;
        case 6:
            plistCatPath = [[NSBundle mainBundle] pathForResource:@"SixWords" ofType:@"plist"];
            theWords = [NSMutableArray arrayWithContentsOfFile:plistCatPath];
            break;
        case 7:
            plistCatPath = [[NSBundle mainBundle] pathForResource:@"SevenWords" ofType:@"plist"];
            theWords = [NSMutableArray arrayWithContentsOfFile:plistCatPath];
            break;
        default:
            return 0;
    }
    
    //check if the word is in the property list
    BOOL isItAWord = [theWords containsObject: stringWord];
    
    if(isItAWord)
        return score;
    
    return 0;
}

@end
