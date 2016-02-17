class CreateForceUsers < ActiveRecord::Migration
  def change
    create_table :force_users do |t|
      t.string :name
      t.string :title
      t.string :lightsaber_color
      t.string :affiliation
      t.string :location
      t.string :dark_or_light

      t.timestamps null: false
    end
  end
end
