class AddUsersToPatrons < ActiveRecord::Migration[5.0]
  def change
    add_reference :patrons, :user, foreign_key: true
  end
end
