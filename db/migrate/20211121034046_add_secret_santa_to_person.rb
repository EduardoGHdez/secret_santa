class AddSecretSantaToPerson < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :secret_santa, :string
  end
end
