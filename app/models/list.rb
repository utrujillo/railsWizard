class List < ApplicationRecord
  validates :nombre, presence: { message: "es requerido" }
  validates :apellido, presence: { message: "por lo menos uno es requerido" }
  validates :correo, email_format: { message: "que ingresaste no parece valido" }
end
