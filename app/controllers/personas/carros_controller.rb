class Personas::CarrosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_persona
  before_action :set_carro, only: [:show, :edit, :update, :destroy]

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

  def create
    @carro = @persona.carros.new(carro_params)
    if @carro.save
      redirect_to persona_carro_path(@persona, @carro)
    else
      render :new
    end
  end

  def update
    if @carro.update(carro_params)
      redirect_to persona_carro_path(@persona, @carro)
    else
      render :edit
    end
  end

  def destroy
    @carro.destroy
    redirect_to persona_carros_path(@persona)
  end

  private
  def set_carro
    @carro = @persona.carros.find(params[:id])
  end

  def set_persona
    @persona = Persona.find(params[:persona_id])
  end

  def carro_params
    params.require(:carro).permit(:placa, :color)
  end
end
