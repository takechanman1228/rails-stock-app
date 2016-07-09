class Category33 < ActiveRecord::Base
  self.primary_key = :code
  has_many :companies
end
