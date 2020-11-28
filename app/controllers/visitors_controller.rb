class VisitorsController < ApplicationController
  def show
    @visitor = Visitor.find(params[:id])
  end
  
  def new
    @visitor = Visitor.new
  end
  
  def create
    @visitor = Visitor.new(visitor_params)
  
    if @visitor.save
	  #@visitor = Visitor.create(:date => Date.today)
	  #@visitor = Visitor.create(:time => Time.now)
	  redirect_to @visitor
	else
	  render 'new'
	end
  end
  
  private
    def visitor_params
      params.require(:visitor).permit(:fullname, :nric, :temperature, :date, :time)
	end
end
