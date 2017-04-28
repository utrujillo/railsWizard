class ListsStepsController < ApplicationController
  include Wicked::Wizard

  steps :social, :question

  def show
    @list = List.new
    render_wizard
  end

  def update
    @list = List.last
    if params[:list][:pregunta2].present?
      params[:list][:pregunta2] = params[:list][:pregunta2].join(",");
    end
    @list.update(list_params)
    render_wizard @list
  end

  private
    def list_params
      params.require(:list).permit(:nombre, :apellido, :escuela, :grado_estudio, :telefono, :correo, :fb, :insta, :tw, :snap, :pregunta1, :pregunta2, :pregunta3, :pregunta4)
    end

    def redirect_to_finish_wizard(options = nil)
      redirect_to finish_lists_path
    end

end
