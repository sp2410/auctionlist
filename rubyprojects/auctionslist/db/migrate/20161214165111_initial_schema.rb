class InitialSchema < ActiveRecord::Migration
  def change

  	create_table :categories do |t|
  		t.string :name
  	end

  	create_table :products do |t|
  		t.string :name
  		t.integer :category_id
  		t.text :description
  		t.string :state
  		t.string :zipcode
  		t.timestamps
  	end

  	create_table :bids do |t|
  		t.string :name
  		t.integer :product_id
  		t.timestamps
  	end


  end
end
