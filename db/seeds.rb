# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Image.delete_all
images = Image.create([{filename: 'template1.png', is_template: true, width: 696, height: 520}, 
                      {filename: 'probe1.png', is_template: false, width: 0, height: 0}])
