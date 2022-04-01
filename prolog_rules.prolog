overhear_conversation(Char1, Char1Name, Char2, Char2Name, Clue, ClueDesc) :-
	character_relationships(Char1, Char2, Relationship, positive),
	character_name(Char1, Char1Name),
	character_name(Char2, Char2Name),
    char_knows_clue(Char1, Char1Name, ClueTag, ClueDesc, Scene). 

char_knows_clue(CharTag, CharName, ClueTag, ClueDesc, Scene) :-
	clue_description(ClueTag, ClueDesc),
	character_name(CharTag, CharName),
    scene_clues(Scene, ClueTag),
    scene_characters(Scene, CharTag).