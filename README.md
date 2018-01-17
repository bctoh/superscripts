# Super Scripts
> A bunch of scripts you can copy and paste into your command line to do the job for you ;)
> 
> ## Usage
> - Download/clone `ss.sh` file and place in root of project folder
> - Click on `ss.sh` file and hit `cmd + i` to get information
> - On the bottom right of the bar, click the lock icon to unlock. It will prompt for your computer's password
> - On the command line, navigate to the root of your project and punch in `chmod 700 ss.sh` to give the bash file permissions

## Organise CSS directory
This command performs the following for a Rails project:
- Creates a `styles` folder in `app/assets/stylesheets/`
- Creates all the `sass` files required according to MIA standard
- Converts `application.css` to a sass file
- Imports all the new files into `application.css.sass`
*Command*
`./ss.sh css`