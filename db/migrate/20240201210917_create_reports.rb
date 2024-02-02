class CreateReports < ActiveRecord::Migration[7.1]
  def change
    create_table :reports do |t|
      t.string :pregunta_1

      t.timestamps
    end
  end
end
