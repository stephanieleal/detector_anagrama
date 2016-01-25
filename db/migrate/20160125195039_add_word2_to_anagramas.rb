class AddWord2ToAnagramas < ActiveRecord::Migration
  def change
    add_column :anagramas, :word2, :string
  end
end
