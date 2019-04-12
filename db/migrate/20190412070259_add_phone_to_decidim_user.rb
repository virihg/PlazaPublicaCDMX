class AddPhoneToDecidimUser < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_users, :mobile_phone_number, :string
  end
end
