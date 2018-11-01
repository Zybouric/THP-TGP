class GossipsController < ApplicationController
  def home
    puts "ddddddd"
  end
  def new
  	@gossips = Gossip.new
  end 
  def create
  	@gossips = Gossip.new
   #if @gossip.save
    #    redirect_to gossips_path
     # else
      #  render 'new'
     # end
  end 
  def show
  	@gossips = Gossip.all
  end 
  def edit
  	@gossips = Gossip.all
  end 
  def update
  	@gossips = Gossip.find(params[:id])  
  	puts params.require(:psot).inspect
  end 
  def index
  	@gossips = Gossip.all
  end 
end
 