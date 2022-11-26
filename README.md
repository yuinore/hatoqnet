# hatoq.net

DEMO: https://hatoq.net/

## Run

```bash
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
bundle exec rails s
```

## Deploy

```bash
bundle exec rails s &
tools/ssg/deploy.sh

# terminate rails server
jobs
fg %1
[Ctrl+C]
```
