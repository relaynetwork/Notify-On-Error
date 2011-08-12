# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{notify-on-error}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Paul Santa Clara"]
  s.date = %q{2011-08-12}
  s.email = %q{psantaclara@relaynetwork.com}
  s.files = [
    "app/mailers/error_mailer.rb",
    "app/views/error_mailer/exception_email.html.erb",
    "lib/application_controller.rb",
    "lib/noe/engine.rb",
    "lib/notify_on_error.rb"
  ]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Let the developer know when a controller expception is allowed to bubble up.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

