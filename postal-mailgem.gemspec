require File.expand_path('../lib/postal/mail_gem/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = "postal-mailgem"
  s.description   = %q{Use Postal with the Ruby mail gem}
  s.summary       = s.description
  s.homepage      = "https://github.com/atech/postal"
  s.version       = Postal::MailGem::VERSION
  s.files         = Dir.glob("{lib}/**/*")
  s.require_paths = ["lib"]
  s.authors       = ["Adam Cooke"]
  s.email         = ["me@adamcooke.io"]
  s.licenses      = ['MIT']
  s.add_dependency "postal", ">= 0.0.2", "< 2.0"
  s.add_dependency "mail"
end
