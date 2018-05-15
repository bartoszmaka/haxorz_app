class AgendasController < ApplicationController
  def index
    agendas = Agenda.all
    render json: { data: agendas }
  end
end
