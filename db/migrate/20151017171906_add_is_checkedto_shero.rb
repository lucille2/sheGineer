class AddIsCheckedtoShero < ActiveRecord::Migration
  def up
  	add_column :sheros, :selected, :boolean
  end
end
