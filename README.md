# poetry-installation-failure
this if for creating a ticket for the poetry team

## Reason
As a devops engineer, we try to keep with the latest version but also keep things as stable as possible.

for these reasons we found the latest poetry unusable and the old version stable enough.

during a docker build we faced an issue in the core of poetry which was solved by jumping to a newer version.

this repo will explain the MVP to see and reproduce the repo (it was sighted a bit differntly, but I chose to bump the versions up to show it still happens on the later versions)

## Env
this uses the latest ubuntu (but was sighted on 20.04)
a clean env is provided below to test it

## Steps

### Build the container

```
docker build -t poetry-installation-failure .
```

### See the error inside the container

```
docker run --rm -it poetry-installation-failure 
> curl -sSL https://install.python-poetry.org | python3.8 - --git https://github.com/python-poetry/poetry@d5c22c2641c415d5fea7cb321f3df7a0a873753b
```

## Output

the output is captured [here](./docs) to speed up checking the issue

## Contribute

contribution of any form are welcome
