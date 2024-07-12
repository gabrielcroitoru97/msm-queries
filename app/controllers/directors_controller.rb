class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list"})
  end

  def show
    @the_id = params.fetch("the_id")
    @the_name = Director.where({:id=>@the_id}).at(0).name
    @the_dob = Director.where({:id=>@the_id}).at(0).dob
    @the_bio = Director.where({:id=>@the_id}).at(0).bio
    @the_image = Director.where({:id=>@the_id}).at(0).image
    @created = Director.where({:id=>@the_id}).at(0).created_at
    @updated = Director.where({:id=>@the_id}).at(0).updated_at

    render({ :template => "director_templates/details"})
  end

end
