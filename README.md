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

Do not start a job during deploy. (executes `kill -15 $!`)

```bash
./tools/ssg/deploy.sh
```
