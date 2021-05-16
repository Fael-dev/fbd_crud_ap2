class HomeController < ApplicationController
  def index
    if usuario_signed_in?
      render template: "home/index"
    else
      redirect_to new_usuario_session_path
    end
  end

  def logout
    sign_out_and_redirect(current_usuario)
  end
end
