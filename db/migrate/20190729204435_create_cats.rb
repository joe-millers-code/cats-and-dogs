class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :age
      t.string :city
      t.string :breed
      t.string :bio
      t.string :temperament
      t.string :picture

      t.timestamps
    end
  end
end
