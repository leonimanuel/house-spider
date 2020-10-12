class CreateAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :areas do |t|
      t.string :string

      t.timestamps
    end
  end
end
