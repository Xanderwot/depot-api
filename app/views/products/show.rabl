child @product, root: false, object_root: false do
  attributes :id, :title, :description, :price
  child :attachments, object_root: false do
    attributes :id, :url, :middle, :thumb
  end
end
