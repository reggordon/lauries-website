class CreateDanceClasses < ActiveRecord::Migration[7.2]
  def change
    create_table :dance_classes do |t|
      t.string :name
      t.text :description
      t.string :schedule

      t.timestamps
    end
  end
end
