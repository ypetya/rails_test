# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rails_test_session',
  :secret      => '06d7d8a1965338f88c98ee5eac632cd8267d0416ffc21f31c8f8dade10a31344e279d4ebf7ca6b5fc18dc2da2ca6287b3ca434c01be61e9a58e8716f923935d1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
