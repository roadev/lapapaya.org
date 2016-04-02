class UpdateUsersToConfirmated < ActiveRecord::Migration
  def change
    User.all.update_all confirmed_at: Time.now
  end
end
