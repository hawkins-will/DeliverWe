class AddUsersAndOrdersToPosts < ActiveRecord::Migration[5.0]
  def change
    add_reference :posts, :user, foreign_key: true
    add_reference :posts, :order, foreign_key: true
  end
end
