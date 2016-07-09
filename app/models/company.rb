class Company < ActiveRecord::Base
  # has_one :market,foreign_key:"market_id"
  # has_one:market
  belongs_to :market,foreign_key:"market_id"
end
