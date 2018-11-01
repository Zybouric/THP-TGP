class GossipsController < ApplicationController
  def home
  end
  def new
  	@gossips = Gossip.new
  end 

  def create
    if params[:gossip].nil?
      # pour le form_for
      @gossip = Gossip.new('title' => params[:title], 'content' => params[:content])
    else
      # pour le form_tag et le form HTML normale
      @gossip = Gossip.new('title' => params[:gossip][:title], 'content' => params[:gossip][:content])
    end
    @gossip.save
    redirect_to gossips_path
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
 