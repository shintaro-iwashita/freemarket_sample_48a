#!/bin/sh

rake db:migrate:reset
rake db:seed:product_category
