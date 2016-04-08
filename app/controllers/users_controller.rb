class UsersController < ApplicationController

def index
  @users = User.everybody_else(current_user.id)
end

def show
  
end


end
