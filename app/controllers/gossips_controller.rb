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
		redirect_to gossip_path(@gossip.id)
	end

	def show
	@gossip = Gossip.find(params[:id])
	end

	def edit
		@gossip = Gossip.find(params[:id])
	end

	def update
		@gossip = Gossip.update(title: params[:gossip][:title], content: params[:gossip][:content])
		redirect_to root_path
	end
	def destroy
		puts params.inspect
		@gossip = Gossip.find(params[:id])
		puts @gossip
		@gossip.destroy
		redirect_to root_path
	end

end
