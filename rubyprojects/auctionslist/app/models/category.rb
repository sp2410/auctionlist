class Category < ActiveRecord::Base
	has_many :products
	has_many :bids
end