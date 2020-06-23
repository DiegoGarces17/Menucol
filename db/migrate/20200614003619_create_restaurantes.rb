class CreateRestaurantes < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurantes do |t|
      t.string :nombre
      t.string :direccion
      t.numeric :telefono
      t.timestamps
    end
  end
end
