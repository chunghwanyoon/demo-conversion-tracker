# Demo Conversion Tracker API

## Local Database Setting
on project root directory
```shell
$ docker-compose --file docker-compose.dev.yml --env-file .env.dev up -d
```

## Initialize Project
```bash
$ rails new ${ProjectName} --api --skip-test
```

## Test setup for RSpec
```bash
$ bundle exec rails generate rspec:install
```
