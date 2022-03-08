:- set_prolog_flag(double_quotes, atom).
current_prolog_flag(character_escapes, true).


:- dynamic(scene/1).
:- dynamic(scene_name/2).
:- dynamic(scene_type/2).
:- dynamic(scene_visited/2).
:- dynamic(scene_lead_outs/2).
:- dynamic(scene_description/2).
:- dynamic(scene_clues/2).
:- dynamic(scene_characters/2).
:- dynamic(scene_challenges/2).

scene(sadies_sob_story).
scene_name(sadies_sob_story, "Sadie's Sob Story").
scene_type(sadies_sob_story, introduction).
scene_visited(sadies_sob_story, false).
scene_lead_outs(sadies_sob_story, what_the_cops_know).
scene_lead_outs(sadies_sob_story, fullers_electrical_repair).
scene_lead_outs(sadies_sob_story, the_peculiar_death_of_myron_fink).
scene_characters(sadies_sob_story, sadie_cain).
scene(fullers_electrical_repair).
scene_name(fullers_electrical_repair, "Fuller's Electrical Repair").
scene_type(fullers_electrical_repair, core).
scene_visited(fullers_electrical_repair, false).
scene_lead_ins(fullers_electrical_repair, sadies_sob_story).
scene_lead_outs(fullers_electrical_repair, fuller_himself).
scene_lead_outs(fullers_electrical_repair, charming_charlie).
scene_characters(fullers_electrical_repair, petunia_adams).
scene(fuller_himself).
scene_name(fuller_himself, "Fuller Himself").
scene_type(fuller_himself, core).
scene_visited(fuller_himself, false).
scene_lead_ins(fuller_himself, sadies_sob_story).
scene_lead_ins(fuller_himself, fullers_electrical_repair).
scene_lead_ins(fuller_himself, charming_charlie).
scene_lead_outs(fuller_himself, charming_charlie).
scene_lead_outs(fuller_himself, temple_of_nephthys).
scene_lead_outs(fuller_himself, georges_apartment).
scene_lead_outs(fuller_himself, what_the_cops_know).
scene_lead_outs(fuller_himself, the_psychical_investigator).
scene(charming_charlie).
scene_name(charming_charlie, "Charming Charlie").
scene_type(charming_charlie, core).
scene_visited(charming_charlie, false).
scene_characters(charming_charlie, charlie_fitzpatrick).
scene(what_the_cops_know).
scene_name(what_the_cops_know, "What the Cops Know").
scene_type(what_the_cops_know, alternate).
scene_visited(what_the_cops_know, false).
scene_lead_ins(what_the_cops_know, sadies_sob_story).
scene_lead_ins(what_the_cops_know, the_peculiar_death_of_myron_fink).
scene_lead_ins(what_the_cops_know, fuller_himself).
scene_lead_outs(what_the_cops_know, the_thing_in_the_morgue).
scene_lead_outs(what_the_cops_know, the_peculiar_death_of_myron_fink).
scene_characters(what_the_cops_know, joseph_oconnor).
scene(the_peculiar_death_of_myron_fink).
scene_name(the_peculiar_death_of_myron_fink, "The Peculiar Death of Myron Fink").
scene_type(the_peculiar_death_of_myron_fink, core).
scene_visited(the_peculiar_death_of_myron_fink, false).
scene_lead_ins(the_peculiar_death_of_myron_fink, sadies_sob_story).
scene_lead_ins(the_peculiar_death_of_myron_fink, charming_charlie).
scene_lead_ins(the_peculiar_death_of_myron_fink, what_the_cops_know).
scene_lead_outs(the_peculiar_death_of_myron_fink, georges_apartment).
scene_lead_outs(the_peculiar_death_of_myron_fink, interviewing_the_neighbors).
scene_lead_outs(the_peculiar_death_of_myron_fink, the_thing_in_the_morgue).
scene_lead_outs(the_peculiar_death_of_myron_fink, what_the_cops_know).
scene_characters(the_peculiar_death_of_myron_fink, clarence_simpson).
scene(interviewing_the_neighbors).
scene_name(interviewing_the_neighbors, "Interviewing the Neighbors").
scene_type(interviewing_the_neighbors, core).
scene_visited(interviewing_the_neighbors, false).
scene_lead_ins(interviewing_the_neighbors, the_peculiar_death_of_myron_fink).
scene_lead_ins(interviewing_the_neighbors, georges_apartment).
scene_lead_outs(interviewing_the_neighbors, the_thing_in_the_morgue).
scene_characters(interviewing_the_neighbors, minnie_boyer).
scene_characters(interviewing_the_neighbors, august_williams).
scene_characters(interviewing_the_neighbors, violet_blake).
scene(georges_apartment).
scene_name(georges_apartment, "George's Apartment").
scene_type(georges_apartment, core).
scene_lead_ins(georges_apartment, the_peculiar_death_of_myron_fink).
scene_lead_ins(georges_apartment, fuller_himself).
scene_lead_outs(georges_apartment, questioning_pearl).
scene_lead_outs(georges_apartment, temple_of_nephthys).
scene_lead_outs(georges_apartment, miracle_machine).
scene_lead_outs(georges_apartment, interviewing_the_neighbors).
scene_lead_outs(georges_apartment, the_psychical_investigator).
scene_characters(georges_apartment, george_simpson).
scene_characters(georges_apartment, pearl_leblanc).
scene(questioning_pearl).
scene_name(questioning_pearl, "Questioning Pearl").
scene_type(questioning_pearl, alternate).
scene_lead_ins(questioning_pearl, georges_apartment).
scene_lead_ins(questioning_pearl, temple_of_nephthys).
scene_lead_outs(questioning_pearl, temple_of_nephthys).
scene_lead_outs(questioning_pearl, miracle_machine).
scene_characters(questioning_pearl, pearl_leblanc).
scene(the_psychical_investigator).
scene_name(the_psychical_investigator, "The Psychical Investigator").
scene_type(the_psychical_investigator, alternate).
scene_lead_ins(the_psychical_investigator, fuller_himself).
scene_lead_ins(the_psychical_investigator, georges_apartment).
scene_lead_outs(the_psychical_investigator, temple_of_nephthys).
scene_characters(the_psychical_investigator, hereward_carrington).
scene(temple_of_nephthys).
scene_name(temple_of_nephthys, "Temple of Nephthys").
scene_type(temple_of_nephthys, core).
scene_lead_ins(temple_of_nephthys, fuller_himself).
scene_lead_ins(temple_of_nephthys, questioning_pearl).
scene_lead_ins(temple_of_nephthys, the_psychical_investigator).
scene_lead_outs(temple_of_nephthys, miracle_machine).
scene_lead_outs(temple_of_nephthys, addie_needs_answers).
scene_lead_outs(temple_of_nephthys, the_leg_breaker).
scene_lead_outs(temple_of_nephthys, questioning_pearl).
scene_characters(temple_of_nephthys, madame_isis).
scene_characters(temple_of_nephthys, pearl_leblanc).
scene(addie_needs_answers).
scene_name(addie_needs_answers, "Addie Needs Answers").
scene_type(addie_needs_answers, alternate).
scene_lead_ins(addie_needs_answers, temple_of_nephthys).
scene_lead_outs(addie_needs_answers, men_gone_missing).
scene_characters(addie_needs_answers, addie_sims).
scene(the_thing_in_the_morgue).
scene_name(the_thing_in_the_morgue, "The Thing in the Morgue").
scene_type(the_thing_in_the_morgue, pipe).
scene_lead_ins(the_thing_in_the_morgue, what_the_cops_know).
scene_lead_ins(the_thing_in_the_morgue, the_peculiar_death_of_myron_fink).
scene_lead_ins(the_thing_in_the_morgue, interviewing_the_neighbors).
scene_characters(the_thing_in_the_morgue, joseph_oconnor).
scene_characters(the_thing_in_the_morgue, myron_fink).
scene(miracle_machine).
scene_type(miracle_machine, core).
scene_lead_ins(miracle_machine, georges_apartment).
scene_lead_ins(miracle_machine, questioning_pearl).
scene_lead_ins(miracle_machine, temple_of_nephthys).
scene_lead_outs(miracle_machine, going_on_the_grid).
scene_characters(miracle_machine, nettie_rice).
scene_characters(miracle_machine, charlie_fitzpatrick).
scene_characters(miracle_machine, howard_fuller).
scene(the_leg_breaker).
scene_name(the_leg_breaker, "The Leg-Breaker").
scene_type(the_leg_breaker, alternate).
scene_lead_ins(the_leg_breaker, temple_of_nephthys).
scene_lead_ins(the_leg_breaker, men_gone_missing).
scene_lead_outs(the_leg_breaker, charlie_comes_clean).
scene_lead_outs(the_leg_breaker, breaking_into_fullers).
scene_characters(the_leg_breaker, marty_the_mouth).
scene(going_on_the_grid).
scene_name(going_on_the_grid, "Going on the Grid").
scene_type(going_on_the_grid, core).
scene_lead_ins(going_on_the_grid, miracle_machine).
scene_lead_ins(going_on_the_grid, interviewing_the_neighbors).
scene_lead_outs(going_on_the_grid, breaking_into_fullers).
scene_characters(going_on_the_grid, marie_lewis).
scene(men_gone_missing).
scene_name(men_gone_missing, "Men Gone Missing").
scene_type(men_gone_missing, alternate).
scene_lead_ins(men_gone_missing, addie_needs_answers).
scene_lead_outs(men_gone_missing, the_leg_breaker).
scene_lead_outs(men_gone_missing, breaking_into_fullers).
scene_characters(men_gone_missing, herbert_roach).
scene(charlie_comes_clean).
scene_name(charlie_comes_clean, "Charlie Comes Clean").
scene_type(charlie_comes_clean, alternate).
scene_lead_ins(charlie_comes_clean, the_leg_breaker).
scene_lead_outs(charlie_comes_clean, breaking_into_fullers).
scene_characters(charlie_comes_clean, charlie_fitzpatrick).
scene(breaking_into_fullers).
scene_name(breaking_into_fullers, "Breaking Into Fuller's").
scene_type(breaking_into_fullers, conclusion).
scene_lead_ins(breaking_into_fullers, going_on_the_grid).
scene_lead_ins(breaking_into_fullers, men_gone_missing).
scene_lead_ins(breaking_into_fullers, charlie_comes_clean).
scene_lead_outs(breaking_into_fullers, sadie_and_the_scoop).
scene_characters(breaking_into_fullers, howard_fuller).
scene_characters(breaking_into_fullers, charlie_fitzpatrick).
scene(sadie_and_the_scoop).
scene_name(sadie_and_the_scoop, "Sadie and the Scoop").
scene_type(sadie_and_the_scoop, denouement).
scene_lead_ins(sadie_and_the_scoop, breaking_into_fullers).


:- dynamic(clue/1).
:- dynamic(clue_desc/2).
:- dynamic(clue_known/2).
:- dynamic(clue_leads_to/2).

clue(someone_in_georges).
clue_description(someone_in_georges, "Someone in George's apartment building was murdered the day before he disappeared. She gives an address and third-story apartment number near the Brooklyn Navy Yard.").
clue_known(someone_in_georges, false).
clue(george_went_to).
clue_description(george_went_to, "George went to work the next day, but no one's seen him since. That was Thursday. He didn't come to work Friday and wasn't in his building.").
clue_known(george_went_to, false).
clue(she_didnt_learn).
clue_description(she_didnt_learn, "She didn't learn any of this until the police tore her place apart on Saturday, then came to her work and grilled her about George and where he might have gone. She's been looking for him ever since.").
clue_known(she_didnt_learn, false).
clue(as_nobody_important).
clue_description(as_nobody_important, "As "nobody important, just a garment worker... or I was until the police told the floor manager my fiancé was a murderer" Sadie doesn't have the money to hire one of those private investigators.").
clue_known(as_nobody_important, false).
clue(vivs_encountered_types).
clue_description(vivs_encountered_types, "Assess Honesty: Viv's encountered types who try to get their loved ones a trial in the press before it ever goes to court. Most of the time, they know the guy did it. This girl seems utterly convinced of her fiancé's innocence.").
clue_known(vivs_encountered_types, false).
clue(the_police_rarely).
clue_description(the_police_rarely, "Streetwise: The police rarely care about getting the right guy when both victim and suspect come from the lower strata. If this case looks open and shut to them, they'll arrest George as soon as they find him and call it a day.").
clue_known(the_police_rarely, false).
clue(she_met_george).
clue_description(she_met_george, "She met George at the New York Public Library. She loves George because she found him entirely different from your ordinary Joe. He read books about the human brain and the spirit world and all kinds of things. He thought a lot. George would have gone to college, only his family couldn't afford it.").
clue_known(she_met_george, false).
clue(george_works_as).
clue_description(george_works_as, "(Core, 'Fuller's Electrical Repair') George works as an electrical repairman at Fuller's Electrical Repair, just a couple blocks north of Fulton Street in downtown Brooklyn.").
clue_known(george_works_as, false).
clue_leads_to(george_works_as, fullers_electrical_repair).
clue(sadie_admits_she).
clue_description(sadie_admits_she, "Sadie admits she doesn't see George every night, which the police took to mean he two- times her. They just don't understand George. Someday you'll hear about him as a famous inventor. At night, he works on building his machine and Mr. Fuller lets him use the workbench. Some nights, he comes by her place but others he works so late that he just sleeps at the shop. She mostly sees him on weekends.").
clue_known(sadie_admits_she, false).
clue(george_was_on).
clue_description(george_was_on, "George was on the verge of an amazing breakthrough: a machine that was going to change everything. If asked what the machine does, Sadie falters. George never actually told her; he said she'd have to see for herself.").
clue_known(george_was_on, false).
clue(george_didnt_have).
clue_description(george_didnt_have, "(Core, "Charming Charlie") George didn't have a lot of friends, but he grew up with one of his coworkers — Charlie Fitzpatrick. As kids, they'd planned to travel the world together.").
clue_known(george_didnt_have, false).
clue_leads_to(george_didnt_have, charming_charlie).
clue(george_rents_a).
clue_description(george_rents_a, "Core, "The Peculiar Death of Myron Fink") George rents a one-room apartment in one of the decrepit older buildings up by the Navy Yard. "Just until we have enough money for one of the nicer new apartments." The landlord, Mr. Simpson, won't let her into his room.").
clue_known(george_rents_a, false).
clue_leads_to(george_rents_a, the_peculiar_death_of_myron_fink).
clue(everyone_persecuted_george).
clue_description(everyone_persecuted_george, "Everyone persecuted George just for coming from a poor family, but he was going to make something of himself, Sadie knows it.").
clue_known(everyone_persecuted_george, false).
clue(if_asked_she).
clue_description(if_asked_she, "If asked, she produces a photograph of a gangling young man with light hair and eyes, but seems reluctant to let it go. He seems to look at something beyond the photographer.").
clue_known(if_asked_she, false).
clue(the_police_questioned).
clue_description(the_police_questioned, "(Alternate, "What the Cops Know") The police questioned her several times, but all she knows is what they told her — someone in George's building got killed. And they insist George did it.").
clue_known(the_police_questioned, false).
clue_leads_to(the_police_questioned, what_the_cops_know).
clue(she_always_thought).
clue_description(she_always_thought, "She always thought George different from the other boys. Bit of a dreamer. Sometimes used to just stare off into space. Why, one time she thought she saw him squinting as though he were trying to see something just out of view.").
clue_known(she_always_thought, false).
clue(yes_george_worked).
clue_description(yes_george_worked, "Yes, George worked on a machine after hours. Several of the boys have pet projects, and Mr. Fuller kindly lets them use his space.").
clue_known(yes_george_worked, false).
clue(she_doesnt_know).
clue_description(she_doesnt_know, "She doesn't know about George's device. Oh, but Richard was trying to build a bicycle-powered electric washer because his mother's farm doesn't yet have electricity. Something about generators. She thought that sounded very practical.").
clue_known(she_doesnt_know, false).
clue(georges_looked_more).
clue_description(georges_looked_more, "George's looked more like a phonograph, or perhaps a projector like at the movies.").
clue_known(georges_looked_more, false).
clue(no_he_must).
clue_description(no_he_must, "No, he must have taken it with him because it's not here now.").
clue_known(no_he_must, false).
clue(he_last_saw).
clue_description(he_last_saw, "He last saw George four nights ago when he, Fuller, locked up. The boy stayed late to work on his device, same as always. But Fuller clarifies he doesn't play favorites: George supplies his own materials and must replace any tools he breaks.").
clue_known(he_last_saw, false).
clue(he_locks_up).
clue_description(he_locks_up, "He locks up around 8 p.m. But several of the boys have keys, including George.").
clue_known(he_locks_up, false).
clue(if_she_wants).
clue_description(if_she_wants, "(Core, "Charming Charlie") If she wants to know more about George, she should talk to Charlie Fitzpatrick. Fuller indicates her on the floor below. Those two grew up together, and are still thick as thieves. It was George who talked him into hiring Charlie.").
clue_known(if_she_wants, false).
clue_leads_to(if_she_wants, charming_charlie).
clue(had_he_thought).
clue_description(had_he_thought, "(Alternate, "What the Cops Know") Had he thought of George as a murderer? No, but you know those sensitive types and the police make a good case. Why else would he have run off ?").
clue_known(had_he_thought, false).
clue_leads_to(had_he_thought, what_the_cops_know).
clue(george_never_leaves).
clue_description(george_never_leaves, "(Core "George's Apartment") George never leaves the device here; he must have taken it home to his apartment.").
clue_known(george_never_leaves, false).
clue_leads_to(george_never_leaves, georges_apartment).
clue(he_thinks_the).
clue_description(he_thinks_the, "He thinks the machine has something to do with radio waves, but doesn't know very much about it. George played his hand close to his chest. [Not entirely false. He's on the hunt for schematics.]").
clue_known(he_thinks_the, false).
clue(either_prompted_by).
clue_description(either_prompted_by, "(Core, "Temple of Nephthys") Either prompted by Viv's questioning him about the dame Char- lie mentions, or remembering just as Viv turns to leave the office, Fuller brings up the other girl who came by on Saturday asking about George. "Pearl something-or-other. She gave me a card. Ah, there it is." From under a heap on his desk, he produces a card bearing the name Madame Isis Neferi, a phone number, a street address in Brooklyn Heights, and Temple of Nephthys. "Madame Isis, that wasn't her, but she begged me to call her if George came back or I got a lead on what she called his ‘miracle machine.' Strange girl."").
clue_known(either_prompted_by, false).
clue(george_asked_her).
clue_description(george_asked_her, "George asked her to stay late the last night anyone saw him, seemed down in the dumps, but Charlie had a date and figured on talking to him Friday morning. George's depressed mood came on suddenly. Just the day before, he had 'the same look he got when he first heard voices on his crystal radio set!' Charlie assumed the glum mug meant he had been on the wrong track after all.").
clue_known(george_asked_her, false).
clue(mr_fuller_would).
clue_description(mr_fuller_would, "(Core, 'Fuller Himself') Mr. Fuller would have seen George last, as far as she knows. George normally lets himself out with his own key, maybe around midnight? Surely Mr. Fuller would have said something if he'd seen him. Charlie chastises herself again for not coming in. - She shows her copy of the key and explains that sometimes she'd stop off after a date, just to make sure George had left.").
clue_known(mr_fuller_would, false).
clue_leads_to(mr_fuller_would, fuller_himself).
clue(she_has_known).
clue_description(she_has_known, "She has known George since they were kids together. He practically forced Fuller to hire her - she secretly did all George's repairs for a week, at least as fast and as well as any of the men. She and George worked here since before the Crash. They couldn't pull a stunt like that now, not with so many men looking for work. Charlie doesn't like Fuller much, but at least he's the one man to have the business sense to hire her and he hasn't used the Crash to lower wages (much) or replace them with cheaper unemployed workers.").
clue_known(she_has_known, false).
clue(charlie_evades_pinning).
clue_description(charlie_evades_pinning, "Charlie evades pinning down an alibi for the night of George's disappearance, simply saying she spent the evening out and got to bed early").
clue_known(charlie_evades_pinning, false).
clue(she_thinks_george).
clue_description(she_thinks_george, "She thinks George might have run off. Maybe he cracked when his machine wouldn't work and jumped off the Brooklyn Bridge.").
clue_known(she_thinks_george, false).
clue(no_george_wouldnt).
clue_description(no_george_wouldnt, "(Pipe, 'The Leg-Breaker') No, George wouldn't kill anyone, but he's sensitive. A murder would have upset him. Charlie reluctantly admits she would believe it more readily if George had robbed someone. Building his machine cost him a lot of money he doesn't have. She hints that George may have borrowed unwisely").
clue_known(no_george_wouldnt, false).
clue_leads_to(no_george_wouldnt, the_leg_breaker).
clue(she_tried_taking).
clue_description(she_tried_taking, "(Core, 'The Peculiar Death of Myron Fink') She tried taking Sadie, 'sweet kid,' by George's apartment, but the landlord has a bee in his bonnet about not letting anyone in. Charlie thinks this irrational, as the police stopped posting a guard there over a day ago.").
clue_known(she_tried_taking, false).
clue_leads_to(she_tried_taking, the_peculiar_death_of_myron_fink).
clue(viv_isnt_the).
clue_description(viv_isnt_the, "(Pipe, 'Temple of Nephthys') Viv isn't the first lady to come by asking questions about George, but she seems a lot more cool-headed than the other. 'Little, awkward girl, not more than 18 or 19' came by the shop Saturday looking for George. She'd seen this girl talking to George outside recently, but doesn't think George is the type to play around. When the girl heard no one had seen George that day or the day before, she became upset and asked to see his 'miracle machine.' Upon hearing the device had disappeared too, the girl turned frantic and accused them all of stealing it. Mr. Fuller took her up to his office and gave her some brandy to calm her nerves.").
clue_known(viv_isnt_the, false).
clue_leads_to(viv_isnt_the, temple_of_nephthys).
clue(the_original_call).
clue_description(the_original_call, "(Alternate lead-in, "The Peculiar Death of Myron Fink") The original call reported a disturbance rather than a death. Several tenants of the same building reported strange sounds and seeing things.").
clue_known(the_original_call, false).
clue_leads_to(the_original_call, the_peculiar_death_of_myron_fink).
clue(because_nobody_could).
clue_description(because_nobody_could, "Because nobody could agree on what happened or whether or not the man screamed, the responding beat cop didn't break down the door, but it wouldn't have helped anyway.").
clue_known(because_nobody_could, false).
clue(as_far_as).
clue_description(as_far_as, "(Alternate lead-in, "The Thing in the Morgue") As far as he knows, the body hasn't yet left Bellevue (Bureaucracy: the morgue at Bellevue Hospital, on 29th Street).").
clue_known(as_far_as, false).
clue_leads_to(as_far_as, the_thing_in_the_morgue).
clue(oconnor_describes_the).
clue_description(oconnor_describes_the, "O'Connor describes the officer in charge, James MacAdams, as a hard-liner. Does things by the book, but generally fair. Seems to be pushing for a quick closure on this case, and O'Connor can't blame him considering what he's heard.").
clue_known(oconnor_describes_the, false).
clue(this_preston_fellow).
clue_description(this_preston_fellow, "This Preston fellow is the natural suspect. From what he heard, they didn't have any leads until Preston flew the coop.").
clue_known(this_preston_fellow, false).
clue(he_hasnt_seen).
clue_description(he_hasnt_seen, "(Alternate lead-in, "The Thing in the Morgue") He hasn't seen the body, and he doesn't plan on it. Several of the policemen on the case show signs of drinking harder than usual. One hasn't slept since: just keeps drinking coffee to stay awake. If Viv is sure she wants to see it, he might be able to pull some strings and get her in.").
clue_known(he_hasnt_seen, false).
clue(on_that_fateful).
clue_description(on_that_fateful, "On that fateful night, he had gone to the moving pictures. "Normally, you wouldn't find a quieter convent. I haven't had to stay on the premises all day and night."").
clue_known(on_that_fateful, false).
clue(other_tenants_in).
clue_description(other_tenants_in, "Other tenants in the building reported strange sounds. Then someone in Myron Fink's apartment screamed.").
clue_known(other_tenants_in, false).
clue(nobody_could_get).
clue_description(nobody_could_get, "(Pipe, "The Thing in the Morgue") Nobody could get the door open until he came back from the pictures, which wasn't until after midnight. When he opened it, they found Fink dead. "Couldn't have saved him, though, not in a condition that serious." He immediately called the police. Police didn't even bother calling a doctor; coroner took him straight to the morgue.").
clue_known(nobody_could_get, false).
clue_leads_to(nobody_could_get, the_thing_in_the_morgue).
clue(he_had_to).
clue_description(he_had_to, "He had to check on all the tenants. Most inconvenient. Everyone else was accounted for, including Preston. Police didn't take him in that night, but told everyone not to try any funny business. Then Preston doesn't come home, so what's a man to think? Of course he called the police. That's the definition of funny business, after all. Now the police think Preston did it, and why should he contradict them?").
clue_known(he_had_to, false).
clue(simpson_reluctantly_admits).
clue_description(simpson_reluctantly_admits, "(Pipe, "The Thing in the Morgue") Simpson reluctantly admits that nobody can tell yet ex- actly what killed Fink. Not an ordinary weapon, for sure. But even if Preston didn't shoot him, why would he have run if he didn't kill him somehow?").
clue_known(simpson_reluctantly_admits, false).
clue_leads_to(simpson_reluctantly_admits, the_thing_in_the_morgue).
clue(preston_wouldnt_answer).
clue_description(preston_wouldnt_answer, "Preston wouldn't answer his door, but when Simpson unlocked it they found him curled up in bed, shivering.").
clue_known(preston_wouldnt_answer, false).
clue(as_far_as_he).
clue_description(as_far_as_he, "As far as he knows, Fink and Preston had no bad blood between them. Fink worked as an accountant, paid his rent on time, and kept himself to himself. Until this week, Simpson considered them two of his easier tenants.").
clue_known(as_far_as_he, false).
clue(at_first_they).
clue_description(at_first_they, "(Pipe, "Going on the Grid") At first they worried they were in for a blackout. The power kept flickering but never actually went off. The last time this happened, it was because a drugstore down the street had installed an entire refrigera- tion section in the back which overloaded the grid. (Violet describes this last with the most hand waving; Williams with the least.)").
clue_known(at_first_they, false).
clue_leads_to(at_first_they, going_on_the_grid).
clue(the_sound_might).
clue_description(the_sound_might, "The sound might have started as soon as the power began flickering, but they didn't notice it until they got used to the weird light.").
clue_known(the_sound_might, false).
clue(everything_stopped_a).
clue_description(everything_stopped_a, "Everything stopped a moment after Fink screamed. The lights came up to full brightness and the... things... vanished. See "August Wil- liams" below.").
clue_known(everything_stopped_a, false).
clue(anyone_telling_her).
clue_description(anyone_telling_her, "(Core, "The Thing in the Morgue") Anyone telling her about Fink's body first glances toward Mr. Simpson, if he is present, and lowers their voice to a conspiratorial whisper. Maybe George killed him, but they don't see how, because... he was bitten clean in half! Police couldn't find his midsection or legs anywhere.").
clue_known(anyone_telling_her, false).
clue_leads_to(anyone_telling_her, the_thing_in_the_morgue).
clue(minnie_lives_in).
clue_description(minnie_lives_in, "Minnie lives in the apartment across the hall and down one from Fink, on the other side from George Preston's place.").
clue_known(minnie_lives_in, false).
clue(until_mr_fink).
clue_description(until_mr_fink, "Until Mr. Fink screamed, she thought she was falling asleep. It gets lonely in the building at night, if she doesn't go out to the pictures or the diner, and sometimes she just dozes off.").
clue_known(until_mr_fink, false).
clue(strangely_once_the).
clue_description(strangely_once_the, "Strangely, once the power started going, Minnie felt like the whole world had gone silent. No noise of the city, just the buzzing of the electric light. It didn't feel bad, though, just peaceful, but then the sound started.").
clue_known(strangely_once_the, false).
clue(the_sound_made).
clue_description(the_sound_made, "The sound made her think of a piano that's gone out of tune. It wasn't like a piano's music, but that way something just feels off and you want to scream or pull out your hair rather than listen to it any more. She had a neighbor in Albany who played her piano day and night, and it grated at her nerves something awful.").
clue_known(the_sound_made, false).
clue(williams_lives_across).
clue_description(williams_lives_across, "Williams lives across from Minnie Boyer, right on the other side of Myron Fink.").
clue_known(williams_lives_across, false).
clue(he_heard_the).
clue_description(he_heard_the, "He heard the sound just like the others say, but that's not all that happened.").
clue_known(he_heard_the, false).
clue(after_a_few).
clue_description(after_a_few, "After a few minutes of it, he went out to find Simpson and complain about the problem with the power. People keep inventing all these newfangled devices without thinking about whether there's enough power to go around. Should be a law.").
clue_known(after_a_few, false).
clue(he_couldnt_find).
clue_description(he_couldnt_find, "He couldn't find Simpson, as usual. When he had almost gotten back to his room, he saw the first... thing. It made him think of a living blimp, floating gently. He slammed and locked he door to his room, but it passed through the wall, almost as though it weren't made of real stuff. For a few minutes, he sat paralyzed on the bed, watching things like the blimp float or mosey by. Then, right before Fink screamed, he saw something else — like a soap bubble but with claws for arms and what looked like tentacles. He'd have screamed too, if he weren't too scared to breathe. Its hideous teeth opened — Fink screamed and it moved through the wall into Fink's room instead. A moment later, it vanished. Everything went back to normal.").
clue_known(he_couldnt_find, false).
clue(violet_lives_at).
clue_description(violet_lives_at, "Violet lives at the far end of the hall, nearest the stairs. Assess Honesty gets the sense that, other than the problem with the power, she didn't experience much of what the others describe. Instead, she piggybacks off their statement so people will listen to her. Viv has encountered the type before in her work.").
clue_known(violet_lives_at, false).
clue(violet_always_had).
clue_description(violet_always_had, "Violet always had George figured for the screwy type. Too quiet, always lost in his own world, never really talked to the other tenants. Probably some sort of crazed sex killer, and that's why he took Fink's lower half with him. Viv hardly needs an Interpersonal ability to interpret this as "he never paid attention to me."").
clue_known(violet_always_had, false).
clue(growing_serious_violet).
clue_description(growing_serious_violet, "Growing serious, Violet remarks that she's never seen anything like the expression on Fink's face. Like something scared him to death before... you know. She couldn't sleep all that night just thinking about it.").
clue_known(growing_serious_violet, false).


:- dynamic(source/1).
:- dynamic(source_name/2).
:- dynamic(source_profession/2).
:- dynamic(source_description/2).
:- dynamic(source_investigative_abilities/2).

source(annette_rice).
source_name(annette_rice, "Annette (Nettie) Rice").
source_profession(annette_rice, "Professor").
source_investigative_abilities(annette_rice, astronomy).
source_investigative_abilities(annette_rice, biology).
source_investigative_abilities(annette_rice, chemistry).
source_investigative_abilities(annette_rice, languages).
source_investigative_abilities(annette_rice, physics).
source(stella_abrams).
source_name(stella_abrams, "Astelle 'Stella' Abrams").
source_profession(stella_abrams, "Amateur Occultist").
source_investigative_abilities(stella_abrams, architecture).
source_investigative_abilities(stella_abrams, craft).
source_investigative_abilities(stella_abrams, cthulhu_mythos).
source_investigative_abilities(stella_abrams, occult).
source_investigative_abilities(stella_abrams, theology).
source(joseph_oconnor).
source_name(joseph_oconnor, "Lt. Joseph O'Connor").
source_profession(joseph_oconnor, "Detective").
source_investigative_abilities(joseph_oconnor, cop_talk).
source_investigative_abilities(joseph_oconnor, forensics).
source_investigative_abilities(joseph_oconnor, intimidation).
source_investigative_abilities(joseph_oconnor, law).
source_investigative_abilities(joseph_oconnor, streetwise).
source(esteban_gonzalez).
source_name(esteban_gonzalez, "Esteban Manuel Aragon Gonzalez").
source_profession(esteban_gonzalez, "Explorer").
source_investigative_abilities(esteban_gonzalez, anthropology).
source_investigative_abilities(esteban_gonzalez, archaeology).
source_investigative_abilities(esteban_gonzalez, art_history).
source_investigative_abilities(esteban_gonzalez, geology).
source_investigative_abilities(esteban_gonzalez, outdoorsman).
source(louisa_reynolds).
source_name(louisa_reynolds, "Louisa Reynolds").
source_profession(louisa_reynolds, "Nurse").
source_investigative_abilities(louisa_reynolds, medicine).
source_investigative_abilities(louisa_reynolds, pharmacy).
source_investigative_abilities(louisa_reynolds, psychology).


:- dynamic(problem/1).
:- dynamic(problem_number/2).
:- dynamic(problem_name/2).
:- dynamic(problem_type/2).
:- dynamic(problem_description/2).
:- dynamic(problem_effect/2).

problem(sucker_for_a_pretty_face).
problem_number(sucker_for_a_pretty_face, 1).
problem_type(sucker_for_a_pretty_face, continuity).
problem_description(sucker_for_a_pretty_face, "You change lovers as frequently as clothes.").
problem(soft_spot).
problem_number(soft_spot, 6).
problem_type(soft_spot, continuity).
problem_description(soft_spot, "Whatever you're feeling for Charlie, it's not entirely professional.").
problem(big_talker).
problem_number(big_talker, 7).
problem_type(big_talker, continuity).
problem_description(big_talker, "You protested a little too strongly that you just want information about George, and got a bigger response than you bargained on. The GM brings foward men with random and conflicting theories until you either make a Stealth Quick Test to leave them arguing with each other or lose an hour or two listening to them all.").
problem(wrenched_ankle).
problem_number(wrenched_ankle, 8).
problem_description(wrenched_ankle, "You pulled something in your foot. -2 on your next Athletics, Fighting, or other General/Physical test or Take Time and then discard this Problem").


:- dynamic(item/1).
:- dynamic(item_name/2).
:- dynamic(item_description/2).
:- dynamic(item_type/2).

item(photo_of_george).
item_name(photo_of_george, "A photograph of George Preston").
item_description(photo_of_george, "A photograph of George Preston, a gangling young man with light hair and eyes").
item_type(photo_of_george, photograph).
item(letter_from_george_preston).
item_name(letter_from_george_preston, "Letter from George Preston to Hereward Carrington").
item_description(letter_from_george_preston, "A letter that reads: Dear Sir: I write as an admirer of your work. Though by trade an electrician, I consider myself an inventor in the tradition of Marconi, Morse, and Bell. For several years now, I have worked on a device, which I consider a successor to the radio and the television. Just as we walk daily through waves from a dozen radio stations and now television stations as well, so I believe we are constantly surrounded by the unseen spirits who exist at a frequency most humans cannot perceive. From my readings on psychic phenomena, I conclude that mediums are no different from others who possess such acute hearing that they cannot live in a house with others or such a strong sense of taste that they only eat the blandest of foods. And we average men are like the color-blind who cannot distinguish red from green, only our numbers are far greater. Machines, unlike men, face no such limitations. When complete, my device will amplify light and sound to make visible that which exists at the very edge of what you and I can see and hear. From your books, I gather that you possess a greater openness to scientific proof of psychic phenomena than many others in your line of work. I would be deeply indebted if you would be willing to discuss my theory with me further and attend the first public unveiling of the device, which I now believe to be in its final stages. I have recently begun attending psychic ceremonies at the Temple of Nephthys. From my observation, I believe the medium, Madame Isis, possesses a true connection to the spirit world. Unlike others whose séances I have attended, she does not elicit phantasmal raps, conjure glowing hands, or move objects with ghostly fingers as a magician might. Several of her regular attenders with whom I have spoken, including her secretary, attest to the veracity of statements they receive from the departed. I consider such testimonies better proof than showy phenomena. Despite my faith in my own observations, I hope I might ask whether you had visited her on one of your investigations and, if so, whether you observed any fraudulent behavior of the types you describe in your books. I remain yours sincerely, George Preston").
item_type(letter_from_george_preston, letter).


:- dynamic(edge/1).
:- dynamic(edge_number/2).
:- dynamic(edge_name/2).
:- dynamic(edge_description/2).
:- dynamic(edge_effect/2).

edge(ice_queen).
edge_number(ice_queen, 1).
edge_name(ice_queen, "Ice Queen").
edge_description(ice_queen, "You're getting better at prioritizing things that matter.").
edge_effect(ice_queen, "Spend to get an extra die on Cool or Stability or a +2 on a General/Mental test, then discard").


:- dynamic(challenge/1).
:- dynamic(challenge_name/2).
:- dynamic(challenge_type/2).
:- dynamic(challenge_advance/3).
:- dynamic(challenge_hold/4).
:- dynamic(challenge_setback/2).
:- dynamic(challenge_extra_problem/2).

challenge(other_peoples_mail).
challenge_name(other_peoples_mail, "Other People's Mail").
challenge_type(other_peoples_mail, "filch").
challenge_advance(other_peoples_mail, "4", "You successfully purloin the letter. Grants access to alternate scene 'The Psychical Investigator'.").
challenge_hold(other_peoples_mail, "2", "3", "As your fingers brush the edge of the letter, Fuller makes eye contact and his eyes begin to move downward. If you decide to play it off by deliberately noticing the letter's address, you may spend a Push to convince him you'll give the letter to Preston's fiancée. He demurs to this suggestion, but may later change his mind. Grants access to alternate scene 'The Psychical Investigator'.").
challenge_setback(other_peoples_mail, "Fuller sees you tip the letter into your handbag. After snatching it back, he roughly escorts you out of the building and threatens to call the police if you set foot inside again. If you have not yet spoken to Charlie Fitzpatrick, she follows you onto the street to see if you know something about George.").
challenge_extra_problem(other_peoples_mail, fuller_becomes_suspicious).
challenge(focus_on_the_story_not_the_smile).
challenge_name(focus_on_the_story_not_the_smile, "Focus On The Story, Not The Smile").
challenge_type(focus_on_the_story_not_the_smile, "cool").
challenge_advance(focus_on_the_story_not_the_smile, "4", "When you interview enough women with charm and grit, you develop immunity to the type. Earn an Edge: Edge 1, 'Ice Queen'").
challenge_hold(focus_on_the_story_not_the_smile, "2", "3", "Cute and you might even want to buy her a drink sometime, but you've got to treat Charlie like any other source - with a bit of distance and a grain of salt.").
challenge_setback(focus_on_the_story_not_the_smile, "She's someone special alright. Whether your heart's beating faster or you're just surprised and impressed by finding her here, you've sure got a soft spot for her. Gain Problem 6, 'Soft Spot'").
challenge_extra_problem(focus_on_the_story_not_the_smile, big_talker).
challenge(catching_the_would_be_intruder).
challenge_name(catching_the_would_be_intruder, "Catching the Would-Be Intruder").
challenge_type(catching_the_would_be_intruder, "athletics").
challenge_advance(catching_the_would_be_intruder, "6", "You easily get to the stairs before her and force her to talk to you. Invite the player to describe how she gets the jump on Pearl so easily. Move to "Questioning Pearl." Earn an Edge: Edge 2, "Sure-Footed"").
challenge_hold(catching_the_would_be_intruder, "3", "5", "By the time you catch up to her on the stairs, she's pulled herself together and attempts to grab the schematics you retrieved from Preston's apartment. This may mean snatching your capacious purse or simply wresting the schematics from your hand. Challenge: "Hang onto the Clue."").
challenge_setback(catching_the_would_be_intruder, "She runs like a gazelle, and you've had a few too many cigarettes lately. She's out the door, and you know you'll never catch her in the maze of alleys.").
challenge_extra_problem(catching_the_would_be_intruder, wrenched_ankle).
challenge(hang_onto_the_clue).
challenge_name(hang_onto_the_clue, "Hang Onto the Clue").
challenge_type(hang_onto_the_clue, "fighting").
challenge_advance(hang_onto_the_clue, "7", "Not today, sister! You twist away the schematics while keeping an iron grip on the young woman's wrist. Move to "Questioning Pearl." Earn an Edge: Edge 3, "Pulled it Together"").
challenge_hold(hang_onto_the_clue, "3", "6", "By the time you catch up to her on the stairs, she's pulled herself together and attempts to grab the schematics you retrieved from Preston's apartment. This may mean snatching your capacious purse or simply wresting the schematics from your hand. Challenge: "Hang onto the Clue."").
challenge_setback(hang_onto_the_clue, "She runs like a gazelle, and you've had a few too many cigarettes lately. She's out the door, and you know you'll never catch her in the maze of alleys.").
challenge_extra_problem(hang_onto_the_clue, wrenched_ankle).
challenge(antagonist_reaction_1_challenge).
challenge_type(antagonist_reaction_1_challenge, "cool").
challenge_advance(antagonist_reaction_1_challenge, "6", "Gain Edge 11, 'Good Citizen'.").
challenge_hold(antagonist_reaction_1_challenge, "2", "5", "They accept her argument, but give her the cold shoulder for a few days").
challenge_setback(antagonist_reaction_1_challenge, "Gain Problem 23, 'Evicted'.").
challenge_extra_problem(antagonist_reaction_1_challenge, no_good_deed).
challenge(antagonist_reaction_1_challenge).
challenge_type(antagonist_reaction_1_challenge, "cool").
challenge_advance(antagonist_reaction_1_challenge, "6", "Gain Edge 11, 'Good Citizen'.").
challenge_hold(antagonist_reaction_1_challenge, "2", "5", "They accept her argument, but give her the cold shoulder for a few days").
challenge_setback(antagonist_reaction_1_challenge, "Gain Problem 23, 'Evicted'.").
challenge_extra_problem(antagonist_reaction_1_challenge, no_good_deed).


:- dynamic(character/1).
:- dynamic(character_name/2).
:- dynamic(character_goal/2).
:- dynamic(character_knows/2).
:- dynamic(character_relationship_with/4).

character(sadie_cain).
character_name(sadie_cain, "Sadie Cain").
character_goal(sadie_cain, "Find missing fiance").
character_knows(sadie_cain, george_preston).
character(george_preston).
character_name(george_preston, "George Preston").
character_knows(george_preston, sadie_cain).
character_knows(george_preston, howard_fuller).
character_knows(george_preston, charlie_fitzpatrick).
character(charlie_fitzpatrick).
character_name(charlie_fitzpatrick, "Charlie (Charlene) Fitzpatrick").
character_knows(charlie_fitzpatrick, george_preston).
character_knows(charlie_fitzpatrick, howard_fuller).
character(howard_fuller).
character_name(howard_fuller, "Howard Fuller").
character_knows(howard_fuller, george_preston).
character_knows(howard_fuller, charlie_fitzpatrick).
character_knows(howard_fuller, petunia_adams).
character(clarence_simpson).
character_name(clarence_simpson, "Clarence Simpson").
character_knows(clarence_simpson, george_preston).
character(pearl_leblanc).
character_name(pearl_leblanc, "Pearl LeBlanc").
character_knows(pearl_leblanc, madame_isis).
character(madame_isis).
character_name(madame_isis, "Madame Isis Neferi").
character_knows(madame_isis, pearl_leblanc).
character_knows(madame_isis, addie_sims).
character(hereward_carrington).
character_name(hereward_carrington, "Hereward Carrington").
character_knows(hereward_carrington, george_preston).
character(marty_the_mouth).
character_name(marty_the_mouth, "Marty the Mouth").
character_knows(marty_the_mouth, george_preston).
character(addie_sims).
character_name(addie_sims, "Addie Sims").
character_knows(addie_sims, madame_isis).
character(petunia_adams).
character_name(petunia_adams, "Petunia Adams").
character_knows(petunia_adams, howard_fuller).
character_knows(petunia_adams, george_preston).
character(minnie_boyer).
character_name(minnie_boyer, "Minnie Boyer").
character_knows(minnie_boyer, george_preston).
character(august_williams).
character_name(august_williams, "August Williams").
character_knows(august_williams, george_preston).
character(violet_blake).
character_name(violet_blake, "Violet Blake").
character_knows(violet_blake, george_preston).
character(marie_lewis).
character_name(marie_lewis, "Marie Lewis").
character_knows(marie_lewis, nettie_rice).
character(herbert_roach).
character_name(herbert_roach, "Herbert Roach").
character_knows(herbert_roach, howard_fuller).
character_knows(herbert_roach, george_preston).
character(myron_fink).
character_name(myron_fink, "Myron Fink").
character_knows(myron_fink, george_preston).


:- dynamic(investigative_ability/4).

investigative_ability(accounting, "Accounting", "You understand bookkeeping and accountancy procedures; you can read and keep financial records.", academic).


:- dynamic(general_ability/4).

general_ability(athletics, "Athletics", "Athletics allows you to perform general acts of physical derring-do, from running to jumping to throwing bundles of dynamite to dodging oncoming objects.", physical).


:- dynamic(player_edge/1).
:- dynamic(player_problem/1).
:- dynamic(player_investigative_ability/1).
:- dynamic(player_general_ability/2).
:- dynamic(player_pushes/1).
:- dynamic(player_item/1).

player_edge(ice_queen).
player_problem(sucker_for_a_pretty_face).
player_investigative_ability(accounting).
player_investigative_ability(assess_honesty).
player_general_ability(athletics, 1).
pushes(4).


:- dynamic(antagonist_reaction/1).
:- dynamic(challenge_name/2).
:- dynamic(challenge_type/2).
:- dynamic(challenge_advance/3).
:- dynamic(challenge_hold/4).
:- dynamic(challenge_setback/2).
:- dynamic(challenge_extra_problem/2).

antagonist_reaction(antagonist_reaction_1).



overhear_conversation(Char1, Char2, Clue) :-
    character_relationship_with(Char1, Char2, Relationship, positive). 
    char_knows_clue(Char1, Clue). 

char_knows_clue(Char, Clue) :-
    scene_clues(Scene, Clue).
    scene_characters(Scene, Char).