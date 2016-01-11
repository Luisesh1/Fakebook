class WelcomeController < ApplicationController
  def index
  	@cont = Victim.count()
  end
  def victimas
    require 'pg'
    conn = PGconn.open(:dbname => 'production')
    @vict = conn.exec('SELECT usu , con from victims')

    #@vict= Victim.where(:swusu => current_user)
  end
  def ataques
  end
  def servicios
  end
end
