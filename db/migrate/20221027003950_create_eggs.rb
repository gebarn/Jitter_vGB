class CreateEggs < ActiveRecord::Migration[7.0]
  def change
    create_table :eggs do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
