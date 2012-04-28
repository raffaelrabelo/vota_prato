#encoding: utf-8

class Restaurante < ActiveRecord::Base
  validates_presence_of :nome, :message => "Deve ser preenchido"
  validates_presence_of :endereco, :message => "Deve ser preenchido"
  validates_presence_of :especialidade, :message => "Deve ser preenchido"
  
  validates_uniqueness_of :nome, :message => "Nome ja cadastrado"
  validates_uniqueness_of :endereco, :message => "Endereço ja cadastrado"
  
  validate :primeira_letra_maiuscula
  
  has_many :qualificacoes
  has_and_belongs_to_many :pratos    
  

private
    def primeira_letra_maiuscula
      errors.add("nome","primeira Letra deve ser Maiuscula") unless nome =~ /[A-Z].*/
    end
end
