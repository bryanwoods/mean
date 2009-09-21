SPEC = Gem::Specification.new do |s|
  s.name = 'mean'
  s.version = '0.0.3'
  s.author = 'Bryan Woods'
  s.email = 'bryanwoods4e@gmail.com'
  s.homepage = 'http://github.com/bryanwoods/mean'
  s.platform = Gem::Platform::RUBY
  s.summary = "Mean finds the mean of an array of integers. As a bonus feature, Mean also finds the sum of an array of integers. Nifty."
  # Explicitly list all files because Dir[] is incompatible with safelevel 3
  # Just run irb >> Dir["{lib,test}/**/*"] to get the newest array of files
  s.files = ["lib/mean", "lib/mean/mean.rb", "lib/mean/sum.rb", "lib/mean.rb"]
  s.require_path = "lib"
  s.autorequire = "mean"
  s.test_file = "spec/mean_spec.rb"
  s.has_rdoc = true
  s.extra_rdoc_files = ['README']
  s.rdoc_options << '--main' << 'README'
end