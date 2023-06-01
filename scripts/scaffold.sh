yarn modular add card-view --template=card-view
yarn build card-view
yarn modular add grid-view --template=grid-view
yarn build grid-view
yarn modular add simple-app --template=iframe-app
PUBLIC_URL="/microfrontends/simple-app" yarn build simple-app
