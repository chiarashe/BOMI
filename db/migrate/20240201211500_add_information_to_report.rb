class AddInformationToReport < ActiveRecord::Migration[7.1]
  def change
    add_column :reports, :pregunta_2, :boolean
    add_column :reports, :pregunta_2_porque, :string
    add_column :reports, :pregunta_3, :boolean
    add_column :reports, :pregunta_3_porque, :string
    add_column :reports, :pregunta_4, :string
    add_column :reports, :pregunta_5, :string
    add_column :reports, :pregunta_6, :integer
    add_column :reports, :pregunta_7, :integer
    add_column :reports, :pregunta_8, :boolean
    add_column :reports, :pregunta_9, :string
  end
end
