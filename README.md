# Super Scripts
> A bunch of scripts you can run in your command line to do the job for you ;)

## Usage
- Download/clone/fork `ss.sh` file and place in root of project folder
- Click on `ss.sh` file and hit `cmd + i` to get information
- On the bottom right of the bar, click the lock icon to unlock. It will prompt you for your computer's password
- On the command line, navigate to the root of your project and punch in `chmod 700 ss.sh` to give the bash file permissions
- To run a task, use `./ss.sh {{ taskName }}` e.g. `./ss.sh css`

### Organise CSS directory
**Command:** `./ss.sh css`

This command performs the following for a Rails project:
- Creates a `styles` folder in `app/assets/stylesheets/`
- Creates all the `sass` files required according to MIA standard
- Converts `application.css` to a sass file
- Imports all the new files into `application.css.sass`


### Drop, create, migrate and seed your database
**Command:** `./ss.sh rdb`

This command performs the following:
- `rails db:drop db:create db:migrate db:seed`


## Contribution
Please ensure your pull request adheres to the following guidelines:

- Follow existing format when adding a new task
- Comment above your new task in `ss.sh` with the name of your task
- Update the README with what your task does and what the command is for running it
- Search previous suggestions before making a new one, as yours may be a duplicate.
- Make an individual pull request for each suggestion.
- Keep descriptions short and simple.
- Check your spelling and grammar.
- Try to make your pull request and title descriptive but concise.
- Please label your PRs [semantically](https://seesparkbox.com/foundry/semantic_commit_messages) by adding a tag at the start of your pull request title. i.e. (feat), (chore), (docs) etc

## License

Superscripts is a free software, and may be redistributed under the terms specified in the
[LICENSE](/LICENSE) file. Feel free to give me a shout on [twitter](https://twitter.com/briantoh) if you use it :)
