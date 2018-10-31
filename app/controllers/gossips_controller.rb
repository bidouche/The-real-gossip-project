class GossipsController < ApplicationController
	def index
	 @gossips = Gossip.all
	end

	def new
	@gossip = Gossip.new
	end

	def create
	@gossip = Gossip.create(title: params[:gossip][:title], content: params[:gossip][:content])
		puts params[:gossip].inspect
	end

end
