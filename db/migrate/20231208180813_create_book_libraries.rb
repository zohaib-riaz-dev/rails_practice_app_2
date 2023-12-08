class CreateBookLibraries < ActiveRecord::Migration[7.1]
  def change
    create_table :book_libraries do |t|
      t.references :book, null: false, foreign_key: true
      t.references :library, null: false, foreign_key: true

      t.timestamps
    end
  end
end
