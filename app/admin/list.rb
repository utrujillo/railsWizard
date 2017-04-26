ActiveAdmin.register List do
  # See permitted parameters documentation:
  permit_params :nombre, :apellido, :escuela, :grado_estudio, :telefono, :correo, :fb, :insta, :tw, :snap, :pregunta1, :pregunta2, :pregunta3, :pregunta4
end
