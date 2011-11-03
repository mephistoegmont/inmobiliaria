class CreateAnuncios < ActiveRecord::Migration
  def change
    create_table :anuncios do |t|
      t.string :titulo
      t.text :contenido
      t.references :categoria

      t.timestamps
    end
  end
end
