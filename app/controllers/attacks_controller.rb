class AttacksController < ApplicationController
	def new 
		@ff= Attack.new
		@ataques= Attack.all
	end
	def destroy 
		@ataque = Attack.find(params[:id])
		@ataque.destroy()
		redirect_to '/attacks/new'
	end 
	def create
		Attack.create(link: params[:attack][:link],idusuario: params[:attack][:idusuario])
		redirect_to '/attacks/new'
	end

end
