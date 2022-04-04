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

find_new_lead(Clue, ClueDesc, Scene, SceneName) :- 
    clue_known(Clue, false),
    clue_description(Clue, ClueDesc),
    clue_leads_to(Clue, Scene),
    scene_name(Scene, SceneName),
    scene_visited(Scene, false).

find_hostage_options(Char) :- 
    character_relationships(Char, player, Relationship, positive).

find_physical_injury(Challenge, ExtraProblem) :- 
    challenge_type(Challenge, Type),
    general_ability_name(Type),
    general_ability_type(physical),
    challenge_extra_problem(Challenge, ExtraProblem).