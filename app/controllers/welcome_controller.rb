class WelcomeController < ApplicationController
  def index
  	@cont = Victim.count()
  end
  def victimas
    @vict= Victim.wherepg("swusu like '#{current_user.id}'")
  end
  def ataques
    
  end
  def servicios
  end
end
