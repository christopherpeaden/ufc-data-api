class FighterSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :nickname, :weight_class, :title_holder, :wins, :losses, :draws
end
