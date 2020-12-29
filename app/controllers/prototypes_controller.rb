class PrototypesController < ApplicationController
  def index
  end
  
  def new 
    @prototype = Prototype.new
  end

  def create 
    # Prototype.create(create_params)
    @prototype = Prototype.new(create_params)
    if @prototype.save
        redirect_to root_path
    else
        render :new
    end
    
  end

  private

  def create_params
    params.require(:prototype).permit(:title, :cacth_copy, :concept, :image).merge(user_id: current_user.id)
  end

end
