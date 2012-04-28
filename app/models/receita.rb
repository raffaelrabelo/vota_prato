#encoding: utf-8
class Receita < ActiveRecord::Base
   validates_presence_of :conteudo, :message => "Deve ser preecnido"
   
   belongs_to :prato
   
   validates_presence_of :prato_id
   validates_associated :prato
  
end
