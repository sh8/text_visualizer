class ChangeContentFormatToText < ActiveRecord::Migration
  def change
  	change_column :text_maps, :text, :text
  end
end
