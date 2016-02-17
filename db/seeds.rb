# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ForceUser.create!([{name: 'Yoda', title: 'Jedi Master', lightsaber_color: 'Green', affiliation: 'Jedi Order', location: 'Dagobah System', dark_or_light: 'Light'}, {name: 'Luke Skywalker', title: 'Jedi Master', lightsaber_color: 'Green', affiliation: 'Rebel Alliance', location: 'Tatoonie', dark_or_light: 'Light'}, {name: 'Kylo Ren', title: 'Sith Apprentice', lightsaber_color: 'Red', affiliation: 'New Order', location: 'Starkiller Base', dark_or_light: 'Dark'}])
