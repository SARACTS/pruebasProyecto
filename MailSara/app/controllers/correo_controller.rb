class CorreoController < ApplicationController
   @persona =  Persona.create({ nombre: 'Sara', email: 'saracortescarnero@gmail.com', email_confirmation: 'saracortescarnero@gmail.com'})
    
  ActionCorreo.email(@persona).deliver
end
