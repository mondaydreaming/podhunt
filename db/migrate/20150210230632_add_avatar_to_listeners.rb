class AddAvatarToListeners < ActiveRecord::Migration
  def change
    add_column :listeners, :avatar, :string
  end
end
