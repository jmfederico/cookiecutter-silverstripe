# Docker for PHP

An opinionated [Cookiecutter](https://github.com/audreyr/cookiecutter) template for
installing SilverStripe with WebPack.

## Features

* Installs using any SilverStripe recipe
* Docker (with [Docker for PHP](https://github.com/jmfederico/cookiecutter-php-docker))

Ready to be used with:
* MySQL
* Webpack
* SilverStripe DebugBar


## How to use

```bash
# Grab cookie and generate files
cookiecutter gh:jmfederico/cookiecutter-silverstripe
```

```bash
# Initialize SilverStripe project
composer require silverstripe/recipe-cms
composer require --dev lekoala/silverstripe-debugbar
```

```bash
# Install node dependencies
npm add -D \
    @babel/core \
    @babel/preset-env \
    autoprefixer \
    babel-loader \
    clean-webpack-plugin \
    clean-webpack-plugin \
    css-loader \
    cssnano \
    event-hooks-webpack-plugin \
    file-loader \
    mini-css-extract-plugin \
    node-sass \
    nucleus-styleguide \
    optimize-css-assets-webpack-plugin \
    postcss-loader \
    sass-loader \
    source-map-loader \
    style-loader \
    url-loader \
    webpack \
    webpack-bundle-tracker \
    webpack-cli \
    webpack-plugin-serve
```

```bash
# Automatically generate dotenv files
docker run --rm -v "`pwd`:/var/lib/dotenver/" jmfederico/dotenver

# Take a look to the generated dotenv (.env) file, and modify to your needs.
```

```bash
# Build and run Docker images
docker-compose build
docker-compose up -d
```

Visit https://localhost/

### Using MySQL 8?

You might need to run the following command to fix authentication incompatibility with PHP.

```bash
docker-compose exec mysql bash -c $'mysql -p"$MYSQL_ROOT_PASSWORD" -e "
    ALTER USER \'$MYSQL_USER\'@\'%\'
    IDENTIFIED WITH mysql_native_password BY \'$MYSQL_PASSWORD\';
"'
```
