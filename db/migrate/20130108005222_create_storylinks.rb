class CreateStorylinks < ActiveRecord::Migration
  def change
    create_table :storylinks do |t|
      t.string :story
      t.string :pattern

      t.timestamps
    end
  end
end
