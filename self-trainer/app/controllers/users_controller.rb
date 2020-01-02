class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update]

    def home
    end

    def plan
      if @logged_in.goal == 'Lose Weight'
        @calories = @logged_in.tdee.round - (@logged_in.tdee.round * 0.20)
        @protein = @logged_in.protein
        @fat = @logged_in.fats
        @carbs = @logged_in.carbs
      elsif @logged_in.goal == 'Gain Muscle'
        @calories = @logged_in.tdee.round + 250
        @protein = @logged_in.protein
        @fat = @logged_in.fats
        @carbs = @logged_in.carbs
      end
      if @logged_in && @logged_in.goal
        render :plan
      else
        redirect_to new_plan_path
      end
    end

    def new_plan
      @user = User.new
    end

    def create_plan
      if @logged_in.update(user_params)
        redirect_to plan_path
      else
        flash[:messages] = @user.errors.full_messages
        redirect_to edit_user_path(@user)
      end
    end

    def index
      @users = User.all
    end
  
    def show
    end
  
    def new
      @user = User.new
    end
  
    def create
      user = User.create(user_params)
      if user.valid?
        session[:user_id] = user.id
        redirect_to user_path(user)
      else
        flash[:messages] = user.errors.full_messages
        redirect_to new_user_path
      end
    end
  
    def edit
    end
  
    def update
      if @user.update(user_params)
        redirect_to user_path(@user)
      else
        flash[:messages] = @user.errors.full_messages
        redirect_to edit_user_path(@user)
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :password, :age, :height, :start_weight, :goal_weight, :sex, :goal, :level, :active)
    end
  
    def find_user
      @user = User.find(params[:id])
    end
end
