class CreateVictims < ActiveRecord::Migration
  def change
    create_table :victims do |t|
      t.string :usu
      t.string :con

      t.timestamps
    end
  end
end
