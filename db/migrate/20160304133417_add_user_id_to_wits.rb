class AddUserIdToWits < ActiveRecord::Migration
  def change
    add_column(:wits, :user_id, :integer)
    #table, column, type
  end

end
