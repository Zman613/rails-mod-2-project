class WorkoutsController < ApplicationController

    def index
        @workouts = Workouts.all
    end 
    def show 
       @workouts = Workout.find(params[:id])
    end
        
end
