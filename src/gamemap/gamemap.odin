package gamemap
import "core:log"
import "core:os"
import "core:path/filepath"

init :: proc() {
	 log.info("Map init")
}

deinit :: proc() {
	log.info("Map deinit")
}

load :: proc(path : string) {
     if os.exists(path) {
        log.infof("Loading '{}'", path)
     }
}
