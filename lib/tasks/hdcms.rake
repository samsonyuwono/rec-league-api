namespace :db do
  desc 'heroku pg:reset, migrate, seed'
  task hdcms: :environment do
    exec('heroku pg:reset --app swt-rec-league --confirm swt-rec-league
      heroku run rake db:migrate --app swt-rec-league
      heroku run rake db:seed --app swt-rec-league')	
  end
end
