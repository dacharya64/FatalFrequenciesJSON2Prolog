overhear_conversation(Char1, Char2, Clue, ClueDesc) :-
	character_relationships(Char1, Char2, Relationship, positive) ;
    character_relationship_with(Char1, Char2, Relationship, positive); 
    char_knows_clue(Char1, Clue). 

char_knows_clue(CharTag, CharName, ClueTag, ClueDesc, Scene) :-
	clue_description(ClueTag, ClueDesc),
	character_name(CharTag, CharName),
    scene_clues(Scene, ClueTag),
    scene_characters(Scene, CharTag).