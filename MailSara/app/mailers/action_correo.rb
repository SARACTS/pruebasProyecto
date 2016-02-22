class ActionCorreo < ApplicationMailer
  default from: 'sara@jlcortes.es'
  
  def email(user)
    @user = user
    @url= 'http://www.talentumempleo.com/'
    attachments["agua.png"] = File.read("C:\Users\Arranque 1\Desktop\agua.png") 
    mail(to: @user.mail, subject: 'Aprende a programar con TalentumEmpleo')
  
  
  
  end
end

