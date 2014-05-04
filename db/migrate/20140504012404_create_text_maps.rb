class CreateTextMaps < ActiveRecord::Migration
  def change
    create_table :text_maps do |t|
      t.timestamps
      t.string :text
    end
  end
end
