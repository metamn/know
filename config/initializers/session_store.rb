# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_knowledge_session',
  :secret      => 'cc1e2267379dfe23c6bbbe3ffe07933a25e373d0ae9234f6095a02c11c9034e04f201bdb8740dbe9d97ecf9057409f4929fc9d96011267752e80af2df53b0209'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
