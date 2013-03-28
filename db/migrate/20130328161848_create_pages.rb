class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :scrapbook_id

      t.timestamps
    end
  end
end
