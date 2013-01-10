class CreatePatternlinks < ActiveRecord::Migration
  def change
    create_table :patternlinks do |t|
      t.string :pattern
      t.string :active_task
      t.string :passive_task

      t.timestamps
    end
  end
end
