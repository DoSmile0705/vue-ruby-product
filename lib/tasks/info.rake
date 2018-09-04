namespace :vue do
  desc "Provide information on Webpacker's environment"
  task :info do
    $stdout.puts "Ruby: #{`ruby --version`}"
    $stdout.puts "Rails: #{Rails.version}"
    # $stdout.puts "Webpacker: #{Webpacker::VERSION}"
    $stdout.puts "Node: #{`node --version`}"
    $stdout.puts "Yarn: #{`yarn --version`}"
    $stdout.puts "\n"
    $stdout.puts "#{`yarn list @rails/webpacker vue vue-loader vuex version -s`}"
    $stdout.puts "\n"

    $stdout.puts "Is bin/webpack present?: #{File.exist? 'bin/webpack'}"
    $stdout.puts "Is bin/webpack-dev-server present?: #{File.exist? 'bin/webpack-dev-server'}"
    $stdout.puts "Is bin/yarn present?: #{File.exist? 'bin/yarn'}"
  end
end
