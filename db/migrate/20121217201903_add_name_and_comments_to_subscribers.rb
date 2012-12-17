class AddNameAndCommentsToSubscribers < ActiveRecord::Migration
  def change
    add_column :subscribers, :name, :string
    add_column :subscribers, :comment, :text
  end
end
