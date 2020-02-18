require "rails_helper"

RSpec.describe CourseInstructorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/course_instructors").to route_to("course_instructors#index")
    end

    it "routes to #new" do
      expect(:get => "/course_instructors/new").to route_to("course_instructors#new")
    end

    it "routes to #show" do
      expect(:get => "/course_instructors/1").to route_to("course_instructors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/course_instructors/1/edit").to route_to("course_instructors#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/course_instructors").to route_to("course_instructors#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/course_instructors/1").to route_to("course_instructors#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/course_instructors/1").to route_to("course_instructors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/course_instructors/1").to route_to("course_instructors#destroy", :id => "1")
    end
  end
end
