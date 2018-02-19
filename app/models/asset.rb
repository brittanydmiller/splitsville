class Asset < ActiveRecord::Base
  has_many :bills
end
