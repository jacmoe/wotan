package app
import "core:log"

init :: proc() {
	 log.info("App init")
}

deinit :: proc() {
	log.info("App deinit")
}
