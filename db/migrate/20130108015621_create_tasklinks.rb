class CreateTasklinks < ActiveRecord::Migration
  def change
    create_table :tasklinks do |t|
      t.string :task
      t.string :application
      t.string :input_data
      t.string :output_data

      t.timestamps
    end
  end
end
