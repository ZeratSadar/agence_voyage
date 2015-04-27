require "sinatra"
require "shotgun"
require "sinatra/activerecord"
require './environments'

class Dota < ActiveRecord::Base
end

get '/' do
	$title = "Pupu Voyage"
	erb :index
end

get '/form' do #en premier
	$title = "Pupu Voyage - Inscription"
	erb :form #A ecrire en premier
end #en premier

post '/validation' do #en premier
	Dota.create(params)
	erb :basedd #A ecrire en premier
end #en premier

get '/liste_inscription' do
	@dota = Dota.all
	$title = "Pupu Voyage - fiche des inscrits"
	erb :bdd #A ecrire en premier
end