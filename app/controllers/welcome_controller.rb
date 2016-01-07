class WelcomeController < ApplicationController
  def index

  end
  def victimas
  	@vict = Victim.all()
  end
  def ataques
  end
  def servicios
  end
end
