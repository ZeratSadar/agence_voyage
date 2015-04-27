class CreateDota < ActiveRecord::Migration
  def change
  	create_table :dota do |t|
  		t.string :nom
  		t.string :prenom
  		t.string :adresse
  		t.string :cp
  		t.string :ville
  		t.string :pays
  	end
  end
end
