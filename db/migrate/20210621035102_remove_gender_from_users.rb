class RemoveGenderFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :gender
  end
end
