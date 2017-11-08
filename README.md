***Travis-CI Discord Webhook Scripts***

*You may use these scripts to send a webhook on a successful or failed build.*

How to?

Simple, grab the `success.sh`, `fail.sh` and `.travis.yml` files. Add the lines inside this `.travis.yml` file to yours.
Then, send `success.sh` and `fail.sh` to **the root of your git repository**.

Modify the github url links inside both `success.sh` and `fail.sh` inside the json: "url": "https://github.com/RepoOwner/RepoName/commit/'"$TRAVIS_COMMIT"'"

Finally, inside your Travis-CI repository settings, create a new environment variable named `DISCORD_WEBHOOK_URL` and set the value to your webhook url.

![Adding an environment variable](https://i.imgur.com/ROPxG7X.png)
![Discord Travis-CI Webhook](https://i.imgur.com/3N0Mwgn.png)

No webserver needed, everything is done by Travis-CI on their build servers.
