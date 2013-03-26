class CreateCollaborators < ActiveRecord::Migration
  def change
    create_table :collaborators do |t|
      t.string :name
      t.text :description
      t.string :logo_image

      t.timestamps
    end
  end
end
