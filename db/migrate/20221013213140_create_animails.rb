class CreateAnimails < ActiveRecord::Migration[7.0]
  def change
    create_table :animails do |t|
      t.string :name
      t.string :binomial

      t.timestamps
    end
  end
end
