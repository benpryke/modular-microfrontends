# Clean up
yarn clean

# Set up
MICROFRONTENDS_ROOT="/microfrontends"
. ./scripts/scaffold.sh

# Create registry
REACT_APP_REGISTY_URL="/microfrontends/registry.json" yarn modular build host
mkdir -p dist/pages/microfrontends
echo '[' >> dist/pages/microfrontends/registry.json
echo '{ "name": "card-view", "root": "/microfrontends/card-view", "manifest": "/microfrontends/card-view/package.json" },' >> dist/pages/microfrontends/registry.json
echo '{ "name": "grid-view", "root": "/microfrontends/grid-view", "manifest": "/microfrontends/grid-view/package.json" },' >> dist/pages/microfrontends/registry.json
echo '{ "name": "simple-app", "root": "/microfrontends/simple-app", "manifest": "/microfrontends/simple-app/package.json" }' >> dist/pages/microfrontends/registry.json
echo ']' >> dist/pages/microfrontends/registry.json

# Create dir structure
cp -r dist/host/* dist/pages
mv dist/card-view dist/pages/microfrontends/card-view
mv dist/grid-view dist/pages/microfrontends/grid-view
mv dist/simple-app dist/pages/microfrontends/simple-app
