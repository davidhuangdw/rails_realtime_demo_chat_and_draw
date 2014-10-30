class MessageSerializer < ActiveModel::Serializer
  attributes :id, :username, :content
end
