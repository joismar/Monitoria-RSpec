require 'rspec'
require './monitoria'

RSpec.describe Monitoria do

	subject { Monitoria.new }

	it "Converter 1 milha para 1.60934 Km" do
    expect(subject.miles_to_kilometers(1)).to be_within(0.0001).of(1.60934)
	end

	it "Converter uma maratona: 26.219 milhas para 42.194988 Km" do
    expect(subject.miles_to_kilometers(26.219)).to be_within(0.001).of(42.194988)
	end

  it "Checar cpf 398.164.040-36 valido" do
    expect(subject.check_cpf('398.164.040-36')).to be(true)
	end

  it "Checar cpf 321.154.485-12 inválido" do
    expect(subject.check_cpf('321.154.485-12')).to be(false)
	end

end