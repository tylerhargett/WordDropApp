Word Rack

Purpose: Store full word, to be submitted on user command.

Members:

Tile* rack[7];//the letter rack itself

-(id)init;//initializes the tiles in the rack

-(int)receiveLetter:(char) c;//takes a char and turns it into a Tile to be placed in rack. if no space, return a 0. if there is space return a 1.

-(char)giveLetter:(int) pos;//takes a position in the rack (0-6), sends the char the Tile holds back to LetterRack, and deletes the Tile

-(char*)submitWord;//turns the rack into a char* which then gets returned. IMPORTANT: not sure if the char* part will work properly with manually null-terminating it. Clears the rack regardless of outcome.