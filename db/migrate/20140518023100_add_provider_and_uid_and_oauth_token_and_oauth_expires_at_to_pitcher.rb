class AddProviderAndUidAndOauthTokenAndOauthExpiresAtToPitcher < ActiveRecord::Migration
  def change
    add_column :pitchers, :provider, :string
    add_column :pitchers, :uid, :integer
    add_column :pitchers, :oauth_token, :string
    add_column :pitchers, :oauth_expires_at, :datetime
  end
end
