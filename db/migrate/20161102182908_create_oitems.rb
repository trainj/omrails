class CreateOitems < ActiveRecord::Migration[5.0]
  def change
    create_table :oitems do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :url
      t.text :text

      t.timestamps
    end
  end
end
