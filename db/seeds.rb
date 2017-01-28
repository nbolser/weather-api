# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
   loc = Location.create(name: 'Missoula, MT')
   loc.recordings.create(temp: 32, status: 'Cloudy')
   loc.recordings.create(temp: 37, status: 'Partly Sunny')
   loc.recordings.create(temp: 42, status: 'Sunny')

