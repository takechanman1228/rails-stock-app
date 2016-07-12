# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# coding: utf-8
require "csv"

CSV.foreach('db/company.csv', headers: true) do |row|
  # 暫定的に主要なマーケットに絞る
  if row[2].to_i < 7
    Company.create(:code => row[0], :name => row[1],
    :market_id => row[2],:category33_id => row[3],
    :category17_id => row[4],:scale_id => row[5])
  end
end
