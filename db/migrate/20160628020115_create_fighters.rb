class CreateFighters < ActiveRecord::Migration[5.0]
  def change
    create_table :fighters do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.boolean :title_holder
      t.string :weight_class
      t.integer :wins
      t.integer :losses
      t.integer :draws

      t.timestamps
    end
  end
end
