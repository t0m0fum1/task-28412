class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :user        ,null: false,foreign_key: true
      t.integer :priority_id    ,null: false
      t.string :text            ,null: false
      t.timestamps
    end
  end
end
