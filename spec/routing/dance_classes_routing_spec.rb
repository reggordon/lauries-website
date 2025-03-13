require "rails_helper"

RSpec.describe DanceClassesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/dance_classes").to route_to("dance_classes#index")
    end

    it "routes to #new" do
      expect(get: "/dance_classes/new").to route_to("dance_classes#new")
    end

    it "routes to #show" do
      expect(get: "/dance_classes/1").to route_to("dance_classes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/dance_classes/1/edit").to route_to("dance_classes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/dance_classes").to route_to("dance_classes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/dance_classes/1").to route_to("dance_classes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/dance_classes/1").to route_to("dance_classes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/dance_classes/1").to route_to("dance_classes#destroy", id: "1")
    end
  end
end
