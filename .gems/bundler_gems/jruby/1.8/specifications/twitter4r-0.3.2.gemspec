# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{twitter4r}
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Susan Potter"]
  s.autorequire = %q{twitter}
  s.date = %q{2009-10-27}
  s.email = %q{twitter4r-users@googlegroups.com}
  s.extra_rdoc_files = ["README", "CHANGES", "TODO", "MIT-LICENSE"]
  s.files = ["lib/twitter.rb", "lib/twitter/config.rb", "lib/twitter/model.rb", "lib/twitter/ext/stdlib.rb", "lib/twitter/ext.rb", "lib/twitter/meta.rb", "lib/twitter/client.rb", "lib/twitter/console.rb", "lib/twitter/client/graph.rb", "lib/twitter/client/blocks.rb", "lib/twitter/client/profile.rb", "lib/twitter/client/status.rb", "lib/twitter/client/timeline.rb", "lib/twitter/client/favorites.rb", "lib/twitter/client/account.rb", "lib/twitter/client/base.rb", "lib/twitter/client/messaging.rb", "lib/twitter/client/friendship.rb", "lib/twitter/client/search.rb", "lib/twitter/client/user.rb", "lib/twitter/client/auth.rb", "lib/twitter/version.rb", "lib/twitter/extras.rb", "lib/twitter/core.rb", "spec/twitter/client_spec.rb", "spec/twitter/ext/stdlib_spec.rb", "spec/twitter/console_spec.rb", "spec/twitter/version_spec.rb", "spec/twitter/model_spec.rb", "spec/twitter/config_spec.rb", "spec/twitter/client/messaging_spec.rb", "spec/twitter/client/friendship_spec.rb", "spec/twitter/client/graph_spec.rb", "spec/twitter/client/base_spec.rb", "spec/twitter/client/favorites_spec.rb", "spec/twitter/client/account_spec.rb", "spec/twitter/client/status_spec.rb", "spec/twitter/client/search_spec.rb", "spec/twitter/client/blocks_spec.rb", "spec/twitter/client/timeline_spec.rb", "spec/twitter/client/auth_spec.rb", "spec/twitter/client/user_spec.rb", "spec/twitter/client/profile_spec.rb", "spec/twitter/extras_spec.rb", "spec/twitter/meta_spec.rb", "spec/twitter/core_spec.rb", "README", "CHANGES", "TODO", "MIT-LICENSE"]
  s.homepage = %q{http://twitter4r.rubyforge.org}
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.2")
  s.requirements = ["Ruby 1.8.4+", "json gem, version 0.4.3 or higher", "jcode (for unicode support)"]
  s.rubyforge_project = %q{twitter4r}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A clean Twitter client API in pure Ruby. Will include Twitter add-ons also in Ruby.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, [">= 1.1.1"])
    else
      s.add_dependency(%q<json>, [">= 1.1.1"])
    end
  else
    s.add_dependency(%q<json>, [">= 1.1.1"])
  end
end
