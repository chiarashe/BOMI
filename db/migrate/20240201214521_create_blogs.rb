class CreateBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :blogs do |t|
      t.string :titulo
      t.string :texto
      t.string :pdf
      t.string :video
      t.string :contenido_tipo
      t.string :tema_tipo

      t.timestamps
    end
  end
end
