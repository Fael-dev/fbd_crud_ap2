class MaquinasCosturasController < ApplicationController
  def index
    @marquinas_costura = MaquinaCostura.all
    render template: "maquinas_costuras/index"
  end
end
