require 'radrails'

command "Load schema.rb to DB" do |cmd|
  # FIX: convert this into inline ruby code via a require amd then invoke as a normal ruby method
  cmd.invoke = "RUBYLIB=\"$TM_BUNDLE_SUPPORT/lib:$RUBYLIB\"; \"${TM_RUBY:=ruby}\" -- \"${TM_BUNDLE_SUPPORT}/bin/rake_helper.rb\" db:test:clone"
  cmd.key_binding = [ :control, "|" ]

  cmd.output = :show_as_html
  cmd.scope = [ :source_ruby_rails, :source_yaml ]
end
