class Company < ActiveRecord::Base
  # has_one :market,foreign_key:"market_id"
  # has_one:market
  belongs_to :market,foreign_key:"market_id"
  belongs_to :scale,foreign_key:"scale_id"
  belongs_to :category17,foreign_key:"category17_id"
  belongs_to :category33,foreign_key:"category33_id"
  has_many :comments
end
