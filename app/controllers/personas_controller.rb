class PersonasController < ApplicationController

  def index
  end

  def new
    @persona = Persona.new
  end

  def show
  end

  def edit
  end

  def create
    @persona = Persona.new(persona_params)
    if @persona.save
      redirect_to persona_path(@persona)
    else
      render :new
    end
  end

  private

  def persona_params
    params.require(:persona).permit(:cedula, :nombre, :estatura, :estado, :sexo, :email)
  end

end
