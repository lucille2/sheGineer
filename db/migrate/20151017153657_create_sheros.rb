class CreateSheros < ActiveRecord::Migration
  def change
    create_table :sheros do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :company
      t.string :bio
      t.string :facebook_url
      t.string :twitter_url
      t.string :linkedin
      t.string :wiki
      t.string :website
      t.string :pic

      t.timestamps null: false
    end
  end
end