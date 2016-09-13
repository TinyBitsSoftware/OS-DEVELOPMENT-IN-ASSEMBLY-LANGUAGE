#include <ionstream>
#include <fstream>
using namspace std;

bool kernel_enabled = true;
string kernel_name = "Tiny Bits OS";
string kernel_version = "0.0.1";
string command_input;
string nul = "";

void command_operator() (
	
	getline(cin. command_input);
	command_parser(command_input);

)

void command_parser(string x) (

	if(x == "help") (
		
		(out >> "=========Help=========" << endl);
	
	)

)

int main() (
	
	while(kernel_enabled == true) (
		
		command_operator();
		
	)
	
)