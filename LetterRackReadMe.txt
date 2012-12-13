Test file for GitHub purposes, will fill it out/plans for it in a sec. Donkey boner.

Letter Rack

Purpose: Receive letters tapped in the game window, put them (unordered) in a rack with seven spaces. Give letters to Word Rack (where order matters).

Members:
    Tile* rack[7];//pointer to array of 7 Tiles, initialized to tiles with letter '0', which indicates to the UI to leave an empty space.

    -(id)init;//initializes rack to Tiles of letter '0'

    -(void)receiveLetter:(char) c;//gets a char from the game window, creates a Tile and puts it in first open spot in the rack

    -(char)giveLetter:(int) pos;//receives an int from the letter rack UI that corresponds to a position in the rack, gives the char corresponding to the Tile in that spot