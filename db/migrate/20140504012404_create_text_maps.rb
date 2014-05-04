class CreateTextMaps < ActiveRecord::Migration
  def change
    create_table :text_maps do |t|

      t.timestamps
    end
  end
end
