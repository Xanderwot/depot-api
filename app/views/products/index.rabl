child @products, root: false, object_root: false do
  attributes :id, :title, :description, :price
  child :attachments, object_root: false do
    attributes :id, :url, :middle, :thumb
  end
end
node(:page) { @products.current_page }
node(:total) { @products.total_pages }
