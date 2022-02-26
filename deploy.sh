npx eleventy --pathprefix=/old/ && rsync -avz --delete _site/ admin@jasont.dev:/var/www/jasontdev-old/html
