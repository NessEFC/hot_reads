class CreateReads < ActiveRecord::Migration[5.1]
  def change
    create_table :reads do |t|
      t.string :link_url
      t.integer :count

      t.timestamps
    end
  end
end
