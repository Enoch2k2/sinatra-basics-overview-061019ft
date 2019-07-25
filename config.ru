require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

# IMPORTANT FILE -- add controllers here
use TodosController
run ApplicationController
