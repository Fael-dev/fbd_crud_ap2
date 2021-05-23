class ModeloMaquinaController < ApplicationController
  def index
    @modelos_maquinas = ModeloMaquina.all
    render template: "modelo_maquina/index"
  end
end
