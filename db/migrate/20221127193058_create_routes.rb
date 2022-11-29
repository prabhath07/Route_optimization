class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.string :geo_key
      t.string :status

      t.timestamps
    end
  end
end
