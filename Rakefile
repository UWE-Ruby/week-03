
desc "`rake` will default to running `rake:spec`"
task :default => :spec

desc "Run all the rspec examples"
task :spec do
  system "bundle exec rspec -c spec/*_spec.rb"
end

desc "Run the sample Sinatra sample"
task :sinatra do
  system "bundle exec sinatra lib/sinatra.rb"
end

desc "Run the HighLine sample"
task :highline do
  system "bundle exec ruby lib/highline.rb"
end