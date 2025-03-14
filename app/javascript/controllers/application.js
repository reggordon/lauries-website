import { Application } from "@hotwired/stimulus"
import CarouselController from "./controllers/carousel_controller"

const application = Application.start()
application.register("carousel", CarouselController)

