class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :nombre
      t.string :apellido
      t.string :escuela
      t.string :grado_estudio
      t.string :telefono
      t.string :correo
      t.string :fb
      t.string :insta
      t.string :tw
      t.string :snap
      t.string :pregunta1
      t.string :pregunta2
      t.string :pregunta3
      t.string :pregunta4

      t.timestamps
    end
  end
end
