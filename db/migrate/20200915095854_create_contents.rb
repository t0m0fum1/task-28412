class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.references :user                ,null: false,foreign_key: true
      t.string :message                 ,null: false
      t.timestamps
    end
  end
end
