class CreateRecommendations < ActiveRecord::Migration[7.1]
  def change
    create_table :recommendations do |t|
      t.string :title
      t.string :comments
      t.string :link
      t.boolean :done

      t.timestamps
    end
  end
end
