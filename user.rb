class User

  def initialize(nome = nil, sobrenome = nil, email = nil, senha = nil)
    @nome = nome
    @sobrenome = sobrenome
    @email = email
    @senha = senha
  end

  def checar_dados()
    if (@nome == nil) and (@email == nil) and (@senha == nil)
      return false
    else
      return true
    end
  end

end