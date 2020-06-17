class PersonasController < ApplicationController
  # render layout: "pepito"

  before_action :authenticate_user!
  before_action :set_persona, only: [:show, :edit, :update, :destroy]



  def index
    @personas = Persona.all
  end

  def new
    @persona = Persona.new
  end

  def show
  end

  def edit
  end

  def votos
  end

  def create
    @persona = Persona.new(persona_params)
    if @persona.save
      redirect_to persona_path(@persona)
    else
      render :new
    end
  end

  def update
    if @persona.update(persona_params)
      redirect_to persona_path(@persona)
    else
      render :edit
    end
  end

  def destroy
    @persona.destroy
    redirect_to personas_path
  end

  private

  def set_persona
    @persona = Persona.find(params[:id])
  end

  def persona_params
    params.require(:persona).permit(:cedula, :nombre, :estatura, :estado, :sexo, :email)
  end

end
