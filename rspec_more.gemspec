# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rspec_more}
  s.version = "0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yi Wen"]
  s.date = %q{2011-05-24}
  s.description = %q{A Rspec extension for more macros and matchers, etc.}
  s.email = %q{hayafirst@gmail.com}
  s.extra_rdoc_files = ["CHANGELOG", "README.md", "lib/rspec_more.rb", "lib/rspec_more/active_record.rb", "lib/rspec_more/data_mapper.rb"]
  s.files = ["CHANGELOG", "Gemfile", "Gemfile.lock", "Manifest", "README.md", "Rakefile", "lib/rspec_more.rb", "lib/rspec_more/active_record.rb", "lib/rspec_more/data_mapper.rb", "rspec_more.gemspec"]
  s.homepage = %q{https://github.com/ywen/rspec_more}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Rspec_more", "--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rspec_more}
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{A Rspec extension for more macros and matchers, etc.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
