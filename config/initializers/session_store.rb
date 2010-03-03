# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_issue_tracker_session',
  :secret      => 'd5ebdcf2d81a21116d1855d31dad75fe1e9445475382a60391d2c569bce25da6650aa4ee54a91869bb9f7f33efe74e1e524da2e54fba489ae6f7c13642c282b0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
