// Create the prolog sesssion and load mini_prom_week_example.prolog.
session = pl.create();
session.consult("prolog_database.prolog");

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

//display_all_scenes(); 

function display_all_scenes() {
	output_area.innerHTML = "";
	var get_all_bindings = function(answers) {
		console.log(answers);
		print(answers);	
	}

	session.query("scene(Name).");
	session.answers(get_callback(get_all_bindings));
}

function print(answers) {
	for (var i = 0; i < answers.length; i++) {
    	var answer = answers[i];
    	output_area.innerHTML = output_area.innerHTML + answer + "\n";
	}
}


function char_knows_clue() {
	output_area.innerHTML = "";
	var get_all_bindings = function(answers) {
		console.log(answers);
		print(answers);	
	}

	session.query("char_knows_clue(Char, Clue).");
	session.answers(get_callback(get_all_bindings));
}



function overhear_conversation() {
	output_area.innerHTML = "";
	var get_all_bindings = function(answers) {
		console.log(answers);
		print(answers);	
	}

	session.query("overhear_conversation(Char1, Char2, Clue).");
	session.answers(get_callback(get_all_bindings));
}