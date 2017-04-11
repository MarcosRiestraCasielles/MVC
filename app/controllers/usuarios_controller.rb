class UsuariosController < ApplicationController
  def index
    @usuarios = User.all
  end

  def new
    @usuario = User.new
  end

  def create
    @usuario = User.new(params[:usuario].permit(:email, :password))
    @usuario.save
    redirect_to usuarios_path
  end

  def destroy
    @usuario = User.find(params[:id])
    @usuario.destroy
    redirect_to usuarios_path
  end
end
