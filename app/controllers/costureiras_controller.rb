class CostureirasController < ApplicationController
  def index
    @costureiras = Costureira.all
    render template: "costureiras/index"
  end
end
