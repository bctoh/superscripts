# Super Scripts
> A bunch of scripts you can run in your command line to do the job for you ;)

## Contributors
Project owner & starter: [@briantoh](https://github.com/bctoh/)

## Usage
- Download/clone/fork `ss.sh` file and place in root of project folder
- Click on `ss.sh` file and hit `cmd + i` to get information
- On the bottom right of the bar, click the lock icon to unlock. It will prompt you for your computer's password
- On the command line, navigate to the root of your project and punch in `chmod 700 ss.sh` to give the bash file permissions
- To run a task, use `./ss.sh {{ taskName }}` e.g. `./ss.sh css`

### Organise CSS directory
This command performs the following for a Rails project:
- Creates a `styles` folder in `app/assets/stylesheets/`
- Creates all the `sass` files required according to MIA standard
- Converts `application.css` to a sass file
- Imports all the new files into `application.css.sass`

*Command*

`./ss.sh css`

### Drop, create, migrate and seed your database
This command performs the following:
- `rails db:drop db:create db:migrate db:seed`

*Command*

`./ss.sh rdb`
