yarn modular add card-view --template=card-view
yarn modular add grid-view --template=grid-view
yarn modular add simple-app --template=iframe-app
yarn modular build card-view grid-view
PUBLIC_URL="$MICROFRONTENDS_ROOT/simple-app" yarn modular build simple-app
