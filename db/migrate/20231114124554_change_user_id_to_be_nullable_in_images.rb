class ChangeUserIdToBeNullableInImages < ActiveRecord::Migration[7.0]
  def change
    change_column_null :images, :user_id, true
  end
end
