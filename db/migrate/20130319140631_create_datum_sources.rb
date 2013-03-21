class CreateDatumSources < ActiveRecord::Migration
  def change
    create_table :datum_sources do |t|
      t.string :admin_name
      t.string :public_name
      t.text :description
      t.string :datum_type
      t.references :category
      t.float :default_weight, :default => 1.0
      t.float :min
      t.float :max
      t.string :retriever_class
      t.boolean :is_api
      t.boolean :for_infobox
      t.string :link

      t.timestamps
    end
    add_index :datum_sources, :category_id
  end
end