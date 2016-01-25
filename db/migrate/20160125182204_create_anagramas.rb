class CreateAnagramas < ActiveRecord::Migration
  def change
    create_table :anagramas do |t|
      t.string :word

      t.timestamps null: false
    end
  end
end
