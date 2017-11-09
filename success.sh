echo 'Sending Discord Webhook';
export TIMESTAMP='date +%FT%T%Z';
curl -v -H User-Agent:bot -H Content-Type:application/json -d '{"avatar_url": "https://i.imgur.com/kOfUGNS.png", "username": "Travis CI", "embeds": [{"author": {"name": "'"$AUTHOR_NAME"'", "url": "https://github.com/'"$AUTHOR_NAME"'"}, "title": "Commit '"$TRAVIS_COMMIT"': Build Successful!", "type": "rich", "color": 65280, "url": "https://github.com/RepoOwner/RepoName/commit/'"$TRAVIS_COMMIT"'", "description": "'"$TRAVIS_COMMIT_MESSAGE"'", "timestamp": "'"$TIMESTAMP"'"}]}' $DISCORD_WEBHOOK_URL;
