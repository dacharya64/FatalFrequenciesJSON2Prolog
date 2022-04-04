import json
import re

## TODO: Fix issues with converting chunks in description and clue list 

def check_in_item_tag(pred, item, item_type): 
	if pred in item:
		fWrite.write( item_type + "(" + str(item[pred]) + ").\n")
		return item[pred]

def check_in_item(data_type, pred, item): 
	if pred in item:
		fWrite.write( data_type + "_" + pred + "(" + tag + ", " + str(item[pred]) + ").\n")

def check_in_item_bool(data_type, pred, item): 
	if pred in item:
		if (item[pred] == False):  
			fWrite.write( data_type + "_" + pred + "(" + tag + ", false).\n")
		else: 
			fWrite.write( data_type + "_" + pred + "(" + tag + ", true).\n")

def check_in_item_arr(data_type, pred, item): 
	if pred in item:
		array = item[pred]
		for subitem in array: 
			fWrite.write( data_type + "_" + pred + "(" + tag + ", " + str(subitem) + ").\n")

def check_in_item_arr_chunk(data_type, pred, item): 
	#print(item.has(pred))
	for index, result in enumerate(item["chunks"]):
		if pred in item["chunks"][index]:
			array = item["chunks"][index][pred]
			for subitem in array: 
				fWrite.write( data_type + "_" + pred + "(" + tag + ", " + str(subitem) + ").\n")

def check_in_item_arr_quotes_chunk(data_type, pred, item): 
	#print(item.has(pred))
	for index, result in enumerate(item["chunks"]):
		if pred in item["chunks"][index]:
			array = item["chunks"][index][pred]
			for subitem in array: 
				fWrite.write( data_type + "_" + pred + "(" + tag + ", \"" + str(subitem) + "\").\n")

def check_in_item_arr_obj(data_type, pred, item): 
	if pred in item:
		array = item[pred]

		for subitem in array: 
			if isinstance(subitem, dict):
				obj = subitem
				result_string = data_type + "_" + pred + "(" + tag
				for obj_part in obj: 
					if (obj_part == "relationship"):
						result_string = result_string + ", " + "\"" + obj[obj_part] + "\""
					else: 
						result_string = result_string + ", " + obj[obj_part]
				result_string = result_string + ").\n"
				fWrite.write(result_string)

def check_in_item_obj(data_type, pred, item): 
	if pred in item:
		obj = item[pred]
		result_string = data_type + "_" + pred + "(" + tag
		for subitem in obj: 
			result_string = result_string + ", \"" +  str(obj[subitem]) + "\""
		result_string = result_string + ").\n"
		fWrite.write(result_string)
		

def check_in_item_quotes(data_type, pred, item): 
	if pred in item:
		fWrite.write( data_type + "_" + pred + "(" + tag + ", \"" + str(item[pred]) + "\").\n")

def check_in_item_arr_quotes(data_type, pred, item): 
	if pred in item:
		array = item[pred]
		for subitem in array: 
			fWrite.write( data_type + "_" + pred + "(" + tag + ", \"" + str(subitem) + "\").\n")


def convert_scenes():
	# opens the JSON file with the data and saves it to a JSON object
	with open('data/scenes.json') as data_file:
	    data = json.load(data_file)

	# add in the predicate definitions 
	fWrite.write(":- dynamic(scene/1).\n")
	fWrite.write(":- dynamic(scene_name/2).\n")
	fWrite.write(":- dynamic(scene_type/2).\n")
	fWrite.write(":- dynamic(scene_visited/2).\n")
	fWrite.write(":- dynamic(scene_lead_outs/2).\n")
	fWrite.write(":- dynamic(scene_description/2).\n")
	fWrite.write(":- dynamic(scene_clues/2).\n")
	fWrite.write(":- dynamic(scene_characters/2).\n")
	fWrite.write(":- dynamic(scene_challenges/2).\n")
	fWrite.write("\n")
	# runs through each element in JSON object and extracts the data, writing it to file
	for item in data:
		pred = "tag" 
		global tag 
		tag = check_in_item_tag(pred, item, "scene")
		
		data_type = "scene"
		pred = "name"
		check_in_item_quotes(data_type, pred, item)

		pred = "type"
		check_in_item(data_type, pred, item)

		pred = "visited"
		check_in_item_bool(data_type, pred, item)

		pred = "lead_ins"
		check_in_item_arr(data_type, pred, item)
		
		pred = "lead_outs"
		check_in_item_arr(data_type, pred, item)

		pred = "text"
		check_in_item_arr_quotes_chunk(data_type, pred, item)

		pred = "clues"
		check_in_item_arr_chunk(data_type, pred, item)

		pred = "characters"
		check_in_item_arr(data_type, pred, item)

		pred = "challenges"
		check_in_item_arr(data_type, pred, item)

def convert_clues():
	# opens the JSON file with the data and saves it to a JSON object
	with open('data/clues.json') as data_file:
	    data = json.load(data_file)

	# add in the predicate definitions 
	fWrite.write(":- dynamic(clue/1).\n")
	fWrite.write(":- dynamic(clue_description/2).\n")
	fWrite.write(":- dynamic(clue_known/2).\n")
	fWrite.write(":- dynamic(clue_leads_to/2).\n")
	fWrite.write("\n")
	# runs through each element in JSON object and extracts the data, writing it to file
	for item in data:
		pred = "tag" 
		global tag 
		tag = check_in_item_tag(pred, item, "clue")
		
		data_type = "clue"
		pred = "description"
		check_in_item_quotes(data_type, pred, item)

		pred = "known"
		check_in_item_bool(data_type, pred, item)

		pred = "leads_to"
		check_in_item(data_type, pred, item)

def convert_sources():
	# opens the JSON file with the data and saves it to a JSON object
	with open('data/sources.json') as data_file:
	    data = json.load(data_file)

	# add in the predicate definitions 
	fWrite.write(":- dynamic(source/1).\n")
	fWrite.write(":- dynamic(source_name/2).\n")
	fWrite.write(":- dynamic(source_profession/2).\n")
	fWrite.write(":- dynamic(source_description/2).\n")
	fWrite.write(":- dynamic(source_investigative_abilities/2).\n")
	fWrite.write("\n")
	# runs through each element in JSON object and extracts the data, writing it to file
	for item in data:
		pred = "tag" 
		global tag 
		tag = check_in_item_tag(pred, item, "source")
		
		data_type = "source"
		pred = "name"
		check_in_item_quotes(data_type, pred, item)

		pred = "profession"
		check_in_item_quotes(data_type, pred, item)

		pred = "escription"
		check_in_item_quotes(data_type, pred, item)

		pred = "investigative_abilities"
		check_in_item_arr(data_type, pred, item)

def convert_problems():
	# opens the JSON file with the data and saves it to a JSON object
	with open('data/problems.json') as data_file:
	    data = json.load(data_file)

	# add in the predicate definitions 
	fWrite.write(":- dynamic(problem/1).\n")
	fWrite.write(":- dynamic(problem_number/2).\n")
	fWrite.write(":- dynamic(problem_name/2).\n")
	fWrite.write(":- dynamic(problem_type/2).\n")
	fWrite.write(":- dynamic(problem_description/2).\n")
	fWrite.write(":- dynamic(problem_effect/2).\n")
	fWrite.write("\n")
	# runs through each element in JSON object and extracts the data, writing it to file
	for item in data:
		pred = "tag" 
		global tag 
		tag = check_in_item_tag(pred, item, "problem")

		data_type = "problem"
		pred = "number"
		check_in_item(data_type, pred, item)
		
		pred = "pname"
		check_in_item_quotes(data_type, pred, item)

		pred = "type"
		check_in_item(data_type, pred, item)

		pred = "description"
		check_in_item_quotes(data_type, pred, item)

		pred = "effect"
		check_in_item_quotes(data_type, pred, item)

def convert_items():
	# opens the JSON file with the data and saves it to a JSON object
	with open('data/items.json') as data_file:
	    data = json.load(data_file)

	# add in the predicate definitions 
	fWrite.write(":- dynamic(item/1).\n")
	fWrite.write(":- dynamic(item_name/2).\n")
	fWrite.write(":- dynamic(item_description/2).\n")
	fWrite.write(":- dynamic(item_type/2).\n")
	fWrite.write("\n")
	# runs through each element in JSON object and extracts the data, writing it to file
	for item in data:
		pred = "tag" 
		global tag 
		tag = check_in_item_tag(pred, item, "item")
		data_type = "item"
		pred = "name"
		check_in_item_quotes(data_type, pred, item)

		pred = "description"
		check_in_item_quotes(data_type, pred, item)

		pred = "type"
		check_in_item(data_type, pred, item)

def convert_edges():
	# opens the JSON file with the data and saves it to a JSON object
	with open('data/edges.json') as data_file:
	    data = json.load(data_file)

	# add in the predicate definitions 
	fWrite.write(":- dynamic(edge/1).\n")
	fWrite.write(":- dynamic(edge_number/2).\n")
	fWrite.write(":- dynamic(edge_name/2).\n")
	fWrite.write(":- dynamic(edge_description/2).\n")
	fWrite.write(":- dynamic(edge_effect/2).\n")
	fWrite.write("\n")
	# runs through each element in JSON object and extracts the data, writing it to file
	for item in data:
		pred = "tag" 
		global tag 
		tag = check_in_item_tag(pred, item, "edge")
		data_type = "edge"
		pred = "number"
		check_in_item(data_type, pred, item)
		
		pred = "name"
		check_in_item_quotes(data_type, pred, item)

		pred = "description"
		check_in_item_quotes(data_type, pred, item)

		pred = "effect"
		check_in_item_quotes(data_type, pred, item)

def convert_challenges():
	# opens the JSON file with the data and saves it to a JSON object
	with open('data/challenges.json') as data_file:
	    data = json.load(data_file)

	# add in the predicate definitions 
	fWrite.write(":- dynamic(challenge/1).\n")
	fWrite.write(":- dynamic(challenge_name/2).\n")
	fWrite.write(":- dynamic(challenge_type/2).\n")
	fWrite.write(":- dynamic(challenge_advance/3).\n")
	fWrite.write(":- dynamic(challenge_hold/4).\n")
	fWrite.write(":- dynamic(challenge_setback/2).\n")
	fWrite.write(":- dynamic(challenge_extra_problem/2).\n")
	fWrite.write("\n")
	# runs through each element in JSON object and extracts the data, writing it to file
	for item in data:
		pred = "tag" 
		global tag 
		tag = check_in_item_tag(pred, item, "challenge")
		data_type = "challenge"
		pred = "name"
		check_in_item_quotes(data_type, pred, item)

		pred = "type"
		check_in_item_quotes(data_type, pred, item)

		pred = "advance"
		check_in_item_obj(data_type, pred, item)

		pred = "hold"
		check_in_item_obj(data_type, pred, item)

		pred = "setback"
		check_in_item_obj(data_type, pred, item)

		pred = "extra_problem"
		check_in_item(data_type, pred, item)

def convert_characters():
	# opens the JSON file with the data and saves it to a JSON object
	with open('data/characters.json') as data_file:
	    data = json.load(data_file)

	# add in the predicate definitions 
	fWrite.write(":- dynamic(character/1).\n")
	fWrite.write(":- dynamic(character_name/2).\n")
	fWrite.write(":- dynamic(character_goal/2).\n")
	fWrite.write(":- dynamic(character_knows/2).\n")
	fWrite.write(":- dynamic(character_relationships/4).\n")
	fWrite.write("\n")
	# runs through each element in JSON object and extracts the data, writing it to file
	for item in data:
		pred = "tag" 
		global tag 
		tag = check_in_item_tag(pred, item, "character")
		data_type = "character"
		pred = "name"
		check_in_item_quotes(data_type, pred, item)

		pred = "goal"
		check_in_item_quotes(data_type, pred, item)

		pred = "knows"
		check_in_item_arr(data_type, pred, item)

		pred = "relationships"
		check_in_item_arr_obj(data_type, pred, item)

def convert_investigative_abilities():
	# opens the JSON file with the data and saves it to a JSON object
	with open('data/investigative_abilities.json') as data_file:
	    data = json.load(data_file)

	# add in the predicate definitions 
	fWrite.write(":- dynamic(investigative_ability/4).\n")
	fWrite.write("\n")
	# runs through each element in JSON object and extracts the data, writing it to file
	for item in data:
		pred = "tag" 
		global tag 
		data_type = "investigative_ability"
		result_string = "investigative_ability(" + str(item["tag"]) + ", \"" +  str(item["name"]) + "\", \"" + str(item["description"]) + "\", " + str(item["type"]) + ")."
		fWrite.write( result_string + "\n")

def convert_general_abilities():
	# opens the JSON file with the data and saves it to a JSON object
	with open('data/general_abilities.json') as data_file:
	    data = json.load(data_file)
	    data_type = "general_ability"
	# add in the predicate definitions 
	fWrite.write(":- dynamic(general_ability/4).\n")
	fWrite.write("\n")
	# runs through each element in JSON object and extracts the data, writing it to file
	for item in data:
		pred = "tag" 
		global tag 
		print(item)
		result_string = "general_ability(" + str(item["tag"]) + ", \"" +  str(item["name"]) + "\", \"" + str(item["description"]) + "\", " + str(item["type"]) + ")."
		print(result_string)
		fWrite.write(result_string + "\n")

def convert_player_character():
	# opens the JSON file with the data and saves it to a JSON object
	with open('data/player_character.json') as data_file:
	    data = json.load(data_file)

	# add in the predicate definitions 
	fWrite.write(":- dynamic(player_edge/1).\n")
	fWrite.write(":- dynamic(player_problem/1).\n")
	fWrite.write(":- dynamic(player_investigative_ability/1).\n")
	fWrite.write(":- dynamic(player_general_ability/2).\n")
	fWrite.write(":- dynamic(player_pushes/1).\n")
	fWrite.write(":- dynamic(player_item/1).\n")
	fWrite.write("\n")
	# runs through each element in JSON object and extracts the data, writing it to file
	
	for item in data["edges"]: 
		fWrite.write("player_edge(" + item + ").\n")

	for item in data["problems"]: 
		fWrite.write("player_problem(" + item + ").\n")

	for item in data["investigative_abilities"]: 
		fWrite.write("player_investigative_ability(" + item + ").\n")

	for item in data["general_abilities"]: 
		fWrite.write("player_general_ability(" + item + ", " + str(data["general_abilities"][item]) + ").\n")

	fWrite.write("pushes(" + str(data["pushes"]) + ").\n")

	for item in data["items"]: 
		fWrite.write("player_item(" + str(item) + ").\n")

def convert_antagonist_reactions():
	# opens the JSON file with the data and saves it to a JSON object
	with open('data/antagonist_reactions.json') as data_file:
	    data = json.load(data_file)

	# add in the predicate definitions 
	fWrite.write(":- dynamic(antagonist_reaction/1).\n")
	fWrite.write(":- dynamic(challenge_name/2).\n")
	fWrite.write(":- dynamic(challenge_type/2).\n")
	fWrite.write(":- dynamic(challenge_advance/3).\n")
	fWrite.write(":- dynamic(challenge_hold/4).\n")
	fWrite.write(":- dynamic(challenge_setback/2).\n")
	fWrite.write(":- dynamic(challenge_extra_problem/2).\n")
	fWrite.write("\n")
	# runs through each element in JSON object and extracts the data, writing it to file
	for item in data:
		pred = "tag" 
		global tag 
		tag = check_in_item_tag(pred, item, "antagonist_reaction")
		data_type = "antagonist_reaction"
		pred = "antagonist_reaction_trigger"
		check_in_item_quotes(data_type, pred, item)

		pred = "antagonist_reaction_description"
		check_in_item_quotes(data_type, pred, item)

		pred = "antagonist_reaction_challenge"
		check_in_item(data_type, pred, item)

def add_front_matter(): 
	fWrite.write(":- set_prolog_flag(double_quotes, atom).\n")
	fWrite.write("current_prolog_flag(character_escapes, true).\n")

tag = ""
# file to which we will be writing 
fWrite = open('database.prolog', 'w')
add_front_matter()
fWrite.write("\n\n")
convert_scenes()
fWrite.write("\n\n")
convert_clues()
fWrite.write("\n\n")
convert_sources()
fWrite.write("\n\n")
convert_problems()
fWrite.write("\n\n")
convert_items()
fWrite.write("\n\n")
convert_edges()
fWrite.write("\n\n")
convert_challenges()
fWrite.write("\n\n")
convert_characters()
fWrite.write("\n\n")
convert_investigative_abilities()
fWrite.write("\n\n")
convert_general_abilities()
fWrite.write("\n\n")
convert_player_character()
fWrite.write("\n\n")
convert_antagonist_reactions()
fWrite.close()


