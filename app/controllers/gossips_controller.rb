class GossipsController < ApplicationController
  def home
  end
  def new
  	@gossips = Gossip.new
  end 

  def create
    @gossip = Gossip.new(title: params[:gossip][:title], content: params[:gossip][:content])
  
    @gossip.save
    redirect_to gossips_path
  end
 

  def show
  	@gossips = Gossip.find(params[:id])
  end 
  def edit
  	@gossips = Gossip.find(params[:id])
  end 
  def update
  	@gossips = Gossip.find(params[:id])  
  	puts params.require(:psot).inspect
  end 
  def index
  	@gossips = Gossip.all
  end 
  def destroy
      @gossips = Gossip.find(params[:id])
      @gossips.destroy
      redirect_to gossips_path
  end 

end
 