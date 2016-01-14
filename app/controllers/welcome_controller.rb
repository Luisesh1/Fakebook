class WelcomeController < ApplicationController
  def index
  	@cont = Victim.count()
  end
  def victimas
    @vict= Victim.wherepg("swusu like '1'")
  end
  def ataques
    
  end
  def servicios
  end
end
