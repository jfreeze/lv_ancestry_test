#!/bin/sh

cd assets
rm -rf node_modules/phoenix_live_view
cd ..
mix deps.update phoenix_live_view
cd assets
npm i

