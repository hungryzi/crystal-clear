class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :what
      t.string :who
      t.string :where
      t.string :when
      t.string :how

      t.timestamps
    end
  end
end
