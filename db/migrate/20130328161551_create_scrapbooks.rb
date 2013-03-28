class CreateScrapbooks < ActiveRecord::Migration
  def change
    create_table :scrapbooks do |t|
      t.string :name

      t.timestamps
    end
  end
end
