# Hot Reads

This app was created as part of the final assessment for the Turing School of Software and Design Back-end program, and is built using Rails. Hot Reads is a stand-alone application that communicates with another app--URLockBox--that was also built for the purposes of the final assessment. Users can see the top 10 links that have been created and marked as read in the last 24 hours from the URLockBox site.

The Hot Reads production app can be found here: [Hot Reads Site](https://obscure-caverns-10564.herokuapp.com/)

The URLockBox repo can be found here: [URLockBox Repo](https://github.com/NessEFC/m4-final-starter)

The URLockBox production app can be found here: [URLockBox Site](https://polar-plateau-61904.herokuapp.com/)

## Getting Started

To run this project locally:
```
git clone git@github.com:NessEFC/hot_reads.git
cd hot_reads
bundle
rake db:create
rake db:migrate
rails s
```
Navigate to `localhost:3000` for the development environment.

## Author

Craig Ness
