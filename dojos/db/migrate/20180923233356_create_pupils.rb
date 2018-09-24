class CreatePupils < ActiveRecord::Migration[5.2]
  def change
    create_table :pupils do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :teacher_id
      t.string :belt

      t.timestamps
    end
  end
end
