class WelcomeController < ApplicationController
  def index
  	@cont = Victim.count()
  end
  def victimas
    @vict= Victim.all
  end
  def ataques
    
  end
  def servicios
  end
end
