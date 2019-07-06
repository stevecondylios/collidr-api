class FlatfileSerializer < ActiveModel::Serializer
  attributes :id, :package_names, :function_names
end
