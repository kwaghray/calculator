class CreateKunals < ActiveRecord::Migration
  def change
    create_table :kunals do |t|
      t.string :name
      t.string :title
      t.text :decription

      t.timestamps
    end
  end
end
