Dir[
  Rails.root.join('app/roles/**/*.rb'),
  Rails.root.join('app/contexts/**/*.rb'),
].each { |f| require f }