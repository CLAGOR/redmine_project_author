require_dependency 'project_author_hook_listener'
require_dependency 'project_patch'

Redmine::Plugin.register :project_author do
  name 'Project Author plugin'
  author 'Dominik Pralovski'
  description 'Adds the option to set an author of a project'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end
