class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :dog, foreign_key: true
      t.belongs_to :cat, foreign_key: true
      t.string :sender
      t.string :receiver
      t.string :content

      t.timestamps
    end
  end
end
