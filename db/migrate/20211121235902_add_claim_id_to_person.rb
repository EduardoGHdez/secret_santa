class AddClaimIdToPerson < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :claim_id, :string
  end
end
