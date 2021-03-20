# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
  # activate :minify_css
  # activate :minify_javascript
# end

# Google Analytics tracking / decommenter et ajouter le code de tracking google analytics commencant par UA-
activate :google_analytics do |ga|
ga.tracking_id = 'UA-'
end

# Middleman-deploy / Decommenter et remplacer ID et REPO par votre ID et repo gihub
# activate :deploy do |deploy|
#   deploy.build_before = true
#   deploy.remote = 'https://github.com/ID/REPO.git'
#   deploy.deploy_method = :git
# end

# root in development
configure :build do
  activate :minify_css
  activate :asset_hash
  activate :relative_assets
  # To run the site in a subdirectory (under the GitHub convention of: http://agentem.github.io/new-personal-site/)
  set :relative_links, true
end

# Pretty URLs
activate :directory_indexes
