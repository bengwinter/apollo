# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Apollo::Application.config.secret_key_base = '3bf1914a7ea917a06866cbc939823ade7e2d71bf87a737d8d4e32cae15ee4077477bf579da2861148d8afb1dc63ff02d7ce44a8f5bc14947cd54ce7e81065a98'
