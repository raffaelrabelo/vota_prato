#encoding: utf-8
class Prato < ActiveRecord::Base
  validates_presence_of :nome, :message => "Deve ser preecnido"
  validates_uniqueness_of :nome, :message => "Nome já cadastrado"
  
  has_and_belongs_to_many :restaurantes
  has_one :receita
  
  validate :validate_presence_of_more_than_restaurante
private
  def validate_presence_of_more_than_restaurante
    errors.add("restaurantes","Deve haver ao menos um restaurante") if restaurantes.empty?
  end  
end
