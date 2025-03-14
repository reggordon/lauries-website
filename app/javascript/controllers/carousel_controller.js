import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["slides"]

  connect() {
    this.currentIndex = 0;
    this.totalSlides = this.slidesTarget.children.length;
    this.slideWidth = this.slidesTarget.children[0].offsetWidth;
    window.addEventListener("resize", () => this.updateSlideWidth());
  }

  prev() {
    this.currentIndex = (this.currentIndex - 1 + this.totalSlides) % this.totalSlides;
    this.showSlide();
  }

  next() {
    this.currentIndex = (this.currentIndex + 1) % this.totalSlides;
    this.showSlide();
  }

  showSlide() {
    const offset = -this.currentIndex * this.slideWidth;
    this.slidesTarget.style.transition = "transform 0.5s ease-in-out";
    this.slidesTarget.style.transform = `translateX(${offset}px)`;
  }

  updateSlideWidth() {
    this.slideWidth = this.slidesTarget.children[0].offsetWidth;
    this.showSlide();
  }
}
