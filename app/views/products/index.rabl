child @products, root: false, object_root: false do
  attributes :id, :title, :description, :price
end
node(:page) { @products.current_page }
node(:total) { @products.total_pages }
