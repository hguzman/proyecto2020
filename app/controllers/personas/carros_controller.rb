class Personas::CarrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_persona
  before_action :set_carro, only: [:show, :edit]

  def index
    @carros = @persona.carros
  end

  def show
  end

  def edit
  end

  def new
    @carro = @persona.carros.new
  end

  private
  def set_carro
    @carro = @persona.carros.find(params[:id])
  end

  def set_persona
    @persona = Persona.find(params[:persona_id])
  end
end
