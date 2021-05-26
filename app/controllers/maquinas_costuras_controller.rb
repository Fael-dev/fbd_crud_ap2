class MaquinasCosturasController < ApplicationController

  before_action :set_maquina, only:[:edit, :update, :destroy]

  def index
    @marquinas_costura = MaquinaCostura.all
    render template: "maquinas_costuras/index"
  end
  def new
    @maquinas_costura = MaquinaCostura.new
    render template: "maquinas_costuras/new"
  end

  def create
    @maquinas_costura = MaquinaCostura.new maquina_params
    if @maquinas_costura.save
      flash[:notice] = "Máquina cadastrada com sucesso."
      redirect_to maquinas_costuras_path
    else
      render :new
    end
  end

  def edit
    render :edit
  end

  def update
    if @maquinas_costura.update maquina_params
      redirect_to maquinas_costuras_path
      flash[:notice] = "Máquina atualizado com sucesso."
    else
      render :edit
    end

  end

  def destroy
    if @maquinas_costura.destroy
      flash[:notice] = "Máquina deletada com sucesso."
      redirect_to maquinas_costuras_path
    else
      flash[:notice] = "Erro ao deletar máquina."
      redirect_to maquinas_costuras_path
    end
  end

  def maquina_params
    params.require(:maquinas_costura).permit(:fabricante, :modelo_id)
  end

  def set_maquina
    @maquinas_costura = MaquinaCostura.find(params[:id])
  end
end
