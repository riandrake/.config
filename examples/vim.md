# BUFFERS
    :close closes a buffer
    :w saves the file
    :q quits the file
    :qa should quit all of Vim
    :wq saves and quits the file
    ! frequently means don't save before closing

# BUFFERS, TABS, SPLITS
    Ctrl-W-W swaps windows
    Ctrl-W HJKL to move splits into different directions

    Ctrl-W = to make all splits equal

    Ctrl-W | to maximise vertical width
    Ctrl-W N> to make vertical splits bigger by N
    Ctrl-W N< to make vertical splits smaller by N

    Ctrl-W _ to maximise horizontal split height
    Ctrl-W N+ to make horizontal splits bigger by N
    Ctrl-W N- to make horizontal splits smaller by N

    :split creates a horizontal split
    :vsplit creates a vertical split
    :new creates a new file in a horizontal split
    :vnew creates a new file in a vertical split
    

# TEXT EDITING
    Y and yy both yank lines
    t goes to BEFORE a character, f goes ON a character (motion)
    when doing edit commands, a includes whitespace whereas i does not
    w goes to the end of the word, W goes to the next whitespace
    The join command (J) can be used in Visual mode
    gJ is like J except it inserts no spaces
    gR is like R except you can keep on typing and keep on replacing!
    dd deletes a line
    D deletes after the cursor to the end of the line
    cc deletes a line and enters insert
    C deletes text after the cursor and enters insert
    s deletes a character and enters insert. amazing (substitute)
    S deletes a whole line and enters insert
    ~ changes case of highlighted text
    U makes things uppercase
    u makes things lowercase

# MATH
    Ctrl-A adds to a number
    Ctrl-X subtracts from a number

# SEARCHING
    g/re/p means [g]lobally for each line matching [re]gex, [p]rint

    use v to flip the match pattern

    % means all lines, therefore %s means substitute all lines

    %/[regex]/d means delete any line that matches regex
    %v/[regex]/d means delete any line that does not match regex

    %g/foo/m$ to move lines containing 'foo' to the end of the line
    %g/foo/s/bar/zzz/g to replace all instances of bar with zzz in lines containing foo

# AUTOCOMPLETE
    Ctrl-N and Ctrl-P to autocomplete text within a file
    Ctrl-X, Ctrl-F to autocomplete file paths
    {} to move paragraphs of text

# MARKS
    m[char] to set a mark
    '[char] to go to a mark 

# REGISTERS/MACROS
    registers are referenced using "[char]
    "[char]y to yank into register [char]
    "[char]d to delete and yank into register [char]

    macros are recorded in the same register as yanking
    which MEANS you can yank something then execute it as a macro!
    or record a "macro and paste" it as if it was yanked

# CTRL-P [ PLUGIN ]
    ctrl-P to open file browser

# NERDTREE [ PLUGIN ]
    ctrl-N to toggle NERDTree
    m while in NERDTree to create a new file or directory (directories end with / character)
    cd in NERDTree to change cwd
    C in NERDTree to change root directory

# SURROUND [ PLUGIN ]
    ysiw" to surround a word in quotes
    S" to surround a selection in quotes
    ds" to delete surrounding quotes

# COMMENTARY [ PLUGIN ]
    gcc to toggle comments

# REPLACE WITH REGISTER [ PLUGIN ]
    griw to replace with register
    "[char]riw to replace from a specific register

# SORT MOTION [ PLUGIN ]
    gs to sort
    gsip to sort a paragraph

# INDENT TEXT OBJECT [ PLUGIN ]
    i becomes the noun for indent
    gcii will toggle comments on an indentation block

# LINE TEXT OBJECT [ PLUGIN ]
    l becomes the noun for a line
    gcil will toggle comments on a line

# ENTIRE TEXT OBJECT [ PLUGIN ]
    e becomes the noun for the entire document
    gcie will toggle comments on the whole document

