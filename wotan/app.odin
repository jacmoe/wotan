package wotan
import "core:log"

app_init :: proc() {
	 log.info("App init")
}

app_deinit :: proc() {
	log.info("App deinit")
}

app :: proc() {
	app_init()
	defer app_deinit()
}
