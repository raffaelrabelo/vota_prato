#encoding: utf-8
class Qualificacao < ActiveRecord::Base
  validates_presence_of :nota, :message => "Deve ser preecnido"
  validates_presence_of :valor_gasto, :message => "Deve ser preecnido"
  validates_numericality_of :nota,
                            :greater_than_or_equal_to => 0,
                            :less_than_or_equal_to => 10,
                            :message => "Deve ser um numero entre 0 e 10"
  validates_numericality_of :valor_gasto,
                            :greater_than => 0,
                            :message => "Deve ser um numero maior que 0"                          
  belongs_to :cliente
  belongs_to :restaurante
  
  validates_presence_of :cliente_id, :restaurante_id
  validates_associated :cliente, :restaurante
  
end
