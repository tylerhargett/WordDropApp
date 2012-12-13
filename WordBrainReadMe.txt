WordBrain

Purpose: Check if a word from WordRack is a real word and add to the score based on that.

Members:

-(id)init;//just initializes, doesn't do anything

-(int)checkWord:(Tile*[7]) word;//takes char*, converts it to an array of Tile* then an NSString, getting the score of the word along the way (to be used if it is a real word). Then it creates the PList based on the length of the word, and then it returns the score if it's a real word and 0 if it's not. IMPORTANT: not sure if (sizeof wordArr) will work properly, will need to be tested.