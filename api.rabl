# Required Libraries
require 'openssl'
require 'base64'
require 'URI'
 
data = "testtesttest"
secret_key = "secretkey"
 
# URL encode
def urlncode(string)
URI.escape(string, Regexp.new("[Generating an API Signature^#{URI::PATTERN::UNRESERVED}]"))
end
 
# Computes the signature by hashing the salt with the secret key as the key
hash = OpenSSL::HMAC.digest('sha256', secret_key, data)
 
# base64 encode...
# signature = urlncode(Base64.encode64(hash));