Gem::Specification.new do |s|
  s.name = 'electronic_visit_verification_tracking'
  s.version = '1.0.0'
  s.author = 'Andrew Coleman'
  s.email = 'developers@consoloservices.com'
  s.summary = 'EVV tracking'
  s.description = 'Custom electronic visit verification tracking and Active Record glue'
  s.homepage = 'https://redmine.consoloservices.com'
  s.require_path = '.'
  s.files = [ 'electronic_visit_verification_tracking.rb' ]
  s.add_dependency 'activerecord'
end
