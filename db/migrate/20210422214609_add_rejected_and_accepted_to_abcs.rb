class AddRejectedAndAcceptedToAbcs < ActiveRecord::Migration[6.1]
  def change
    add_column :abcs, :rejected_at, :datetime
    add_column :abcs, :accepted_at, :datetime
  end
end
