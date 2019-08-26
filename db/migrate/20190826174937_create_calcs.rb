class CreateCalcs < ActiveRecord::Migration[5.2]
  def change
    create_table :calcs do |t|
      t.integer :answer
      t.integer :num_input1
      t.integer :num_input2
      t.timestamps
    end
  end
end
