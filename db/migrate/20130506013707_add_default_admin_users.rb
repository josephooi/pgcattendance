class AddDefaultAdminUsers < ActiveRecord::Migration
  def up
    User.create :first => "Admin", :last => "Account", :email => "admin@admin.com", :password => "test1234", :role => "admin"
    User.create :first => "Admin", :last => "Account", :email => "emergency@emergency.com", :password => "test1234", :role => "admin"
  end

  def down
  end
end
