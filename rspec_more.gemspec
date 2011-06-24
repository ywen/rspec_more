# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rspec_more}
  s.version = "0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Yi Wen}]
  s.date = %q{2011-06-24}
  s.description = %q{A Rspec extension for more macros and matchers, etc.}
  s.email = %q{hayafirst@gmail.com}
  s.extra_rdoc_files = [%q{CHANGELOG}, %q{README.md}, %q{lib/rspec_more.rb}, %q{lib/rspec_more/active_record.rb}, %q{lib/rspec_more/data_mapper.rb}]
  s.files = [%q{CHANGELOG}, %q{Gemfile}, %q{Gemfile.lock}, %q{Manifest}, %q{README.md}, %q{Rakefile}, %q{lib/rspec_more.rb}, %q{lib/rspec_more/active_record.rb}, %q{lib/rspec_more/data_mapper.rb}, %q{rspec_more.gemspec}]
  s.homepage = %q{https://github.com/ywen/rspec_more}
  s.rdoc_options = [%q{--line-numbers}, %q{--inline-source}, %q{--title}, %q{Rspec_more}, %q{--main}, %q{README.md}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{rspec_more}
  s.rubygems_version = %q{1.8.5}
  s.summary = %q{A Rspec extension for more macros and matchers, etc.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
