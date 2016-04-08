class WitsController < ApplicationController
    
  before_action :authenticate_user!
  before_filter(:load_wit, only: [:edit, :update, :show, :destroy])

  def index
    @wits = current_user.wits
  end

  def new
    @wit = Wit.new
  end

  def create
    @wit = Wit.create(content: params[:wit][:content], user: current_user)
    redirect_to(wits_path)
  end

  def update
    if @wit.user == current_user
      @wit.update(content: params[:wit][:content])
      redirect_to(wits_path)
    else
      raise "You are not authorized to perform this action!"
  end

  def edit
  end

  def show
  end

  def destroy
    if @wit.user == current_user
      @wit.destroy
      redirect_to(wits_path)
    else
      raise "You are not authorized to perform this action!"
  end

  private

  def load_wit
    @wit = Wit.find(params[:id])  
  end
end
