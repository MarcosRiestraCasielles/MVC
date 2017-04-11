class SendController < ApplicationController
  def index
  end

  def create
    @parameters = params
    ActionCorreoMailer.contact_send(@parameters).deliver
    flash[:notice]= 'formulario enviado'
    redirect_to publicacion_path
  end
end
