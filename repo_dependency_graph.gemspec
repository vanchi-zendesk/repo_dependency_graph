name = "repo_dependency_graph"
require "./lib/#{name.gsub("-","/")}/version"

Gem::Specification.new name, RepoDependencyGraph::VERSION do |s|
  s.summary = "Show the dependencies of your private repos"
  s.authors = ["Michael Grosser"]
  s.email = "michael@grosser.it"
  s.homepage = "http://github.com/grosser/#{name}"
  s.files = `git ls-files lib/ bin/`.split("\n")
  s.license = "MIT"
  s.executables = ["repo-dependency-graph"]
  s.required_ruby_version = '>= 2.1.0'
  s.add_runtime_dependency "organization_audit"
end
