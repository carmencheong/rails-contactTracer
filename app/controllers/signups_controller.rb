class SignupsController < ApplicationController
  def show
    @signup = Signup.find(params[:id])
  end
  
  def new
    @signup = Signup.new
  end
  
  def create
    @signup = Signup.new(signup_params)
    #render plain: params[:signup].inspect
    
	if @signup.save
      redirect_to @signup
    else
      render 'new'
    end
  end

  private
    def signup_params
	  params.require(:signup).permit(:owner, :shopname, :shoplocation)
	end
end
