class AddLearnedToPins < ActiveRecord::Migration
  def change
    add_column :pins, :learned, :text
  end
end
