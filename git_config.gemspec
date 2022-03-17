lib = File.expand_path('lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name = 'git_config'
  s.version = '0.0.1'
  s.date = '2022-03-17'
  s.summary = "project: git_config"
  s.authors = ["xxanon"]
  s.email = "ironald@gmail.com"
  s.files = `git ls-files`.split(/\n/) - %w[bin misc]
  s.executables += `git ls-files bin`.split(/\n/).map{|e| File.basename(e)}
  s.homepage = "https://github.com/nonnax/git_config.git"
  s.license = "GPL-3.0"
end
