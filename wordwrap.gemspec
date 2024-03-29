Gem::Specification.new do |s|
  s.name = 'wordwrap'
  s.version = '1.0.0'
  s.summary = 'Wrap words easily e.g. WordWrap.new("Some long ' \
    + 'line you want to shorten into shorter lines", 32) => returns the ' \
    + 'string with new line characters on or before the 32 character limit.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/wordwrap.rb']
  s.signing_key = '../privatekeys/wordwrap.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'digital.robertson@gmail.com'
  s.homepage = 'https://github.com/jrobertson/wordwrap'
end
