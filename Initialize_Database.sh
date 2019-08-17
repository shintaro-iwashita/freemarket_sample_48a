#!/bin/sh

rake db:migrate:reset
rake db:seed:user
rake db:seed:product_category
rake db:seed:product_image
rake db:seed:product