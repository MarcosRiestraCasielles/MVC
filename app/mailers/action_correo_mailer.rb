class ActionCorreoMailer < ApplicationMailer
  def contact_send(a)
    @parameters = a
    # byebug
     mail(to:'marcos@gmail.com',subject:@parameters[:subject])
  end
end
