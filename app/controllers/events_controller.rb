class EventsController < ApplicationController

	def index 

		@events = Event.all

	end 

	def create
    	event = Event.create(venue: params[:venue], date: params[:date], time: params[:time])
    	redirect_to events_path 
  	end


	def new
      render :new
  	end

end
