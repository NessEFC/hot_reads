class AddDefaultCountToReads < ActiveRecord::Migration[5.1]
  def change
    change_column_default :reads, :count, 0
  end
end
