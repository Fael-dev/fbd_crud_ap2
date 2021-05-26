class CostureirasController < ApplicationController

  before_action :set_costureira, only:[:edit, :update, :destroy]

  def index
    @costureiras = Costureira.all
    render template: "costureiras/index"
  end

  def new
    @costureira = Costureira.new
  end

  def create
    @costureira = Costureira.new costureira_params
    if @costureira.save
      flash[:notice] = "Costureira cadastrado com sucesso."
      redirect_to costureiras_path
    else
      render :new
    end
  end

  def edit
    render :edit
  end

  def update
    if @costureira.update costureira_params
      redirect_to costureiras_path
      flash[:notice] = "Costureira atualizada com sucesso."
    else
      render :edit
    end

  end

  def destroy
    if @costureira.destroy
      flash[:notice] = "Costureira deletada com sucesso."
      redirect_to costureiras_path
    else
      flash[:notice] = "Erro ao deletar costureira."
      redirect_to costureiras_path
    end
  end

  def costureira_params
    params.require(:costureira).permit(:nome, :idade, :sexo, :maquina_costura_id, :usuario_id)
  end

  def set_costureira
    @costureira = Costureira.find(params[:id])
  end

end
