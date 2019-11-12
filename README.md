# Prismic Translator

Converts html to prismic richtext format.

## Build
`docker build -t prismic-converter .`

## Run server
`docker run -p 4567:4567 prismic-converter`

## Usage
`curl -X POST http://localhost:4567/ -d "<p>test<p>"`

## License
MIT
