package main

import "core:fmt"
import "core:os"
import "core:path/filepath"
import "core:log"
import "../wotan"

main :: proc() {
	fmt.println("Wotan!")
	fmt.printf("Current directory: {}\n", os.get_current_directory())
	log_opts := log.Options {
	    .Level,
	    .Time,
	    .Short_File_Path,
	    .Procedure,
	}
	//if os.exists(filepath.join({os.get_current_directory(), "/log/../log.txt"})) {
	if os.exists("log/log.txt") {
		fmt.println("log/log.txt exists. Removing...")
		os.remove("log/log.txt")
	}
	//context.logger = log.create_console_logger(.Debug, log_opts, "Wotan")
	log_file = os.
	context.logger = log.create_file_logger(log_file, .Debug, log_opts)
	log.infof("Current dir: {}", os.get_current_directory())
	wotan.app()
}
