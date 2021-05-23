class UsuariosController < ApplicationController

  def index
    @usuarios = Usuario.all
    render template: "usuarios/index"
  end

  def new
    @usuario = Usuario.new
    render template: "usuarios/new"
  end

  def create
    @usuario = Usuario.new usuario_params
    if @usuario.save
      flash[:notice] = "Usuário cadastrado com sucesso."
      redirect_to usuarios_path
    else
      render :new
    end
  end

  private

  def usuario_params
    params.require(:usuario).permit(:nome, :email, :password, :password_confirmation, :tipo)
  end

end
