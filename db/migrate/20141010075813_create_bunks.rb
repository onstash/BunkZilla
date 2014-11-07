class CreateBunks < ActiveRecord::Migration
  def change
    create_table :bunks do |t|
      t.string :subjectname
      t.integer :bunk
      t.integer :total

      t.timestamps
    end
  end
end
