require 'rspec'
require './user'

describe User do
  it "Válido quando contém o primeiro nome e email e senha" do
    user = User.new( 'Lala', 'Lolo', 'Lele@Lulu.com', 'Lili' )
    expect(user.checar_dados()).to eq(true)
  end
  it "Não válido quando o primeiro nome é nulo"
end