package app
import "core:log"

import "../gamemap"

init :: proc() {
	 log.info("App init")
     gamemap.init()
     gamemap.load("assets/levels/pxlwolf.ldtk")
}

deinit :: proc() {
	log.info("App deinit")
    gamemap.deinit()
}
