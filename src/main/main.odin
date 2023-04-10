package main

import "core:fmt"
import "core:os"
import "core:path/filepath"
import "core:log"
import "../app"

main :: proc() {
    context.logger = setup_log()
    log.info("Log set up.")
    app.init()
    defer app.deinit()
}

setup_log :: proc() -> log.Logger {
    log_opts := log.Options {
             .Level,
             .Time,
             .Short_File_Path,
             .Procedure,
    }
    if os.exists("log/log.txt") {
        os.remove("log/log.txt")
    }
    log_file, err := os.open("log/log.txt", os.O_CREATE|os.O_WRONLY, 0o0644)
    if err != 0 {
        panic("Couldn't create log file. Exiting ...")
    }
    return log.create_file_logger(log_file, .Debug, log_opts)
}
