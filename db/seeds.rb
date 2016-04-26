# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'
FILE_PATH = 'db/seed_csvs/markets.csv'

CSV.foreach(FILE_PATH) do |row|
  row_hash = row.to_h
  Market.create(row_hash)
end
