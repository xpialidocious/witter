class WitsController < ApplicationController
  before_filter(:load_wit, only: [:edit, :update, :show, :destroy])
  
  before_action :authenticate_user!

  def index
    @wits = Wit.all
  end

  def new
    @wit = Wit.new
  end

  def create
    @wit = Wit.create(content: params[:wit][:content])
    redirect_to(wits_path)
  end

  def update
    @wit.update(content: params[:wit][:content])
    redirect_to(wits_path)
  end

  def edit
  end

  def show
  end

  def destroy
    @wit.delete
    redirect_to(wits_path)
  end

  private

  def load_wit
    @wit = Wit.find(params[:id])  
  end
end
