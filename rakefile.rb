desc "Run a specific test, provide a test name or a /regexp/"
task :t, :test_name do |t, args|
  test_name = args[:test_name] || 'test_play'
  sh "ruby -w -I. ~/Escritorio/LPP/ppt/test/tc_ppt.rb --name #{test_name}"
end

desc "Run test"
task :test do
  sh "ruby -I. ~/Escritorio/LPP/ppt/test/tc_ppt.rb"
end

#desc "Tijeras"
#task :tijeras do
#  sh "ruby -I. ppt_main.rb tijeras"
#end
