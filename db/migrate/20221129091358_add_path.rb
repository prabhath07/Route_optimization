class AddPath < ActiveRecord::Migration[7.0]
  def change
    add_column :routes, :path, :string
  end
end
