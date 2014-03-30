class CreateMoments < ActiveRecord::Migration
  def change
    create_table :moments do |t|
      t.text :content
      t.string :writer

      t.timestamps
    end
  end
end
