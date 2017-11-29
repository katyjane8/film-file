class CreateFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :films do |t|
      t.string :title
      t.string :director_id
      t.integer :year
      t.integer :box_office_sales
    end
  end
end
