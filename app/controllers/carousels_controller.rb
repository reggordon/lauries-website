class CarouselsController < ApplicationController
    def index
      @carousel_images = CarouselImage.all
    end
  end