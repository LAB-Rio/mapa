# encoding: UTF-8
#

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
require 'csv'

Category.create([

  # A pe
  { name: 'Novas travessias de pedestres', travel_mode: 'walking', icon_url: 'http://i.imgur.com/Z2nzN8a.png' },
  { name: 'Novas passarelas de pedestres', travel_mode: 'walking', icon_url: 'http://i.imgur.com/Z2nzN8a.png' },
  { name: 'Estações de alta capacidade (Trem, Metro, BRT) que precisem de um projeto de requalificação do entorno', travel_mode: 'walking', icon_url: 'http://i.imgur.com/Z2nzN8a.png' },
  { name: 'Locais de travessia de pedestres inseguras', travel_mode: 'walking', issue: true, icon_url: 'http://i.imgur.com/Z2nzN8a.png' },
  { name: 'Trechos de calçada deteriorados', travel_mode: 'walking', issue: true, icon_url: 'http://i.imgur.com/Z2nzN8a.png' },

  # Bicicleta
  { name: 'Novos bicicletários', travel_mode: 'biking', icon_url: 'http://i.imgur.com/niSXPaT.png' },

  # Coletivo
  { name: 'Indicar novos terminais de onibus', travel_mode: 'bus', icon_url: 'http://i.imgur.com/jYFs3hD.png' },
  { name: 'Novos pontos de onibus', travel_mode: 'bus', icon_url: 'http://i.imgur.com/jYFs3hD.png' },


  # Motorizado individual
  { name: 'Indicar fechamento de ruas para transito exclusivo de pedestres', travel_mode: 'driving', icon_url: 'http://i.imgur.com/rd3TOby.png' },
  { name: 'Indicar ruas de trafego moderado (zona 30)', travel_mode: 'driving', icon_url: 'http://i.imgur.com/rd3TOby.png' },
  { name: 'Perimetro de pedagio urbano', travel_mode: 'driving', icon_url: 'http://i.imgur.com/rd3TOby.png' },


])




districts = CSV.read(Rails.root.join('db/sampledata/bairros.csv'), encoding: 'ISO8859-1')


districts.each do |row|
  District.create(name: row[0].encode('utf-8'), lat: row[1], long: row[2])
end



User.create(first_name: 'Luiz', email: 'eu@luiz.cc', district_id: District.first.id, last_name: 'Claudio', password: '123456')
