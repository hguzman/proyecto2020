class CarroPolicy
  attr_reader :user, :carro

  def initialize(user, carro)
    @user = user
    @carro = carro
  end

  def new?
    user.has_role? :admin
  end

  def index?
    true
  end

  def upade?
    user.has_role? :admin
  end

  def show?
    user.has_role? [:estudiante, :admin]
  end

  def destroy?
    user.has_role? :admin
  end

end
