// Create the prolog sesssion and load mini_prom_week_example.prolog.
session = pl.create();
session.consult("database.prolog");

// Array of variable bindings, one per answer, returned by prolog query
var bindings = [];

/*
 * Returns a callback function to pass to session.answers(). 
 * The parameter is the function for the callback to call (with the bindings as parameter)
 * when prolog has found all the answers. 
*/
function get_callback(funcWhenDone) 
{
	var callbackFunc = function(answer) 
	{
		if (answer == false) 
		{
			// We're done finding answers. Execute funcWhenDone with the bindings.
			funcWhenDone(bindings);
		}
		else 
		{
			// We've gotten another non-false answer - add it to the bindings.
			bindings.push(answer);
		}
	}

	return callbackFunc;
} 

function clear_output_area() {
	output_area.innerHTML = "";
	bindings = [];
}

function display_all_scenes() {
	clear_output_area();
	var get_all_bindings = function(answers) {
		for (var i = 0; i < answers.length; i++) {
    		var answer = answers[i];
    		var result_name = answer.lookup("Name");
    		output_area.innerHTML = output_area.innerHTML + result_name + "<br>";
		}	
	}

	session.query("scene_name(Tag, Name).");
	session.answers(get_callback(get_all_bindings));
}

function print(answers) {
	for (var i = 0; i < answers.length; i++) {
    	var answer = answers[i];
    	output_area.innerHTML = output_area.innerHTML + answer + "\n";
	}
}

function char_knows_clue() {
	clear_output_area();
	output_area.innerHTML = "";
	var get_all_bindings = function(answers) {
		console.log(answers);
		for (var i = 0; i < answers.length; i++) {
    		var answer = answers[i];
    		var result_name = answer.lookup("CharName");
    		var result_clue = answer.lookup("ClueDesc");
    		output_area.innerHTML = output_area.innerHTML + result_name + " knows the clue: " + result_clue + "<br>";
		}	
	}

	session.query("char_knows_clue(CharTag, CharName, ClueTag, ClueDesc, Scene).");
	session.answers(get_callback(get_all_bindings));
}

function overhear_conversation() {
	clear_output_area();
	output_area.innerHTML = "";
	var get_all_bindings = function(answers) {
		console.log(answers);
		print(answers);	
	}

	session.query("overhear_conversation(Char1, Char2, Clue, ClueDesc).");
	session.answers(get_callback(get_all_bindings));
}

function display_all_clues() {
	clear_output_area();
	var get_all_bindings = function(answers) {
		for (var i = 0; i < answers.length; i++) {
    		var answer = answers[i];
    		var result_name = answer.lookup("Desc");
    		output_area.innerHTML = output_area.innerHTML + result_name + "<br>";
		}	
	}

	session.query("clue_description(Tag, Desc).");
	session.answers(get_callback(get_all_bindings));
}