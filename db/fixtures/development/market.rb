# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# coding: utf-8
require "csv"

CSV.foreach('db/market.csv', headers: true) do |row|
  # 暫定的に主要なマーケットに絞る
  if row[0].to_i  < 7
    Market.create(:code => row[0], :market => row[1])
  end
end
