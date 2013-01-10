class CreatePatterns < ActiveRecord::Migration
  def change
    create_table :patterns do |t|
      t.string :name
      t.string :patterntype
      t.string :event

      t.timestamps
    end
  end
end
