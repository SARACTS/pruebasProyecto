namespace :prueba do
  desc "tarea de prueba que espero que cree un usuario"
  task :levantarse do
    puts "Hola buenos dias"
  end
  task :nuevoUser => :enviroment do
    numero = 1
    usuario = User.new
    usuario.user = "Usuario #{numero}"
    usuario.email = "usuario#{numero}@ejemplo.com"
    numero += 1
  end
end