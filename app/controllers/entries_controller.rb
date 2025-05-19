class EntriesController < ApplicationController

  def new
    @place = Place.find_by({ "id" => params["place_id"]})
    @entry = Entry.new
  end

  def create
    @place = Place.find_by({ "id" => params["place_id"] })
    @entries = Entry.where({ "place_id" => @place["id"] })
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["place_id"] = @place["id"]
    @entry.save
    redirect_to "/places/#{@place["id"]}"
  end

end
