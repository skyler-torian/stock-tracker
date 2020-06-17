class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :symbol
      t.string :company
      t.string :name
      t.string :exchange
      t.string :industry
      t.string :website
      t.string :description
      t.string :ceo
      t.string :sector

      t.timestamps
    end
  end
end
