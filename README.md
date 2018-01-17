# Super Scripts
> A bunch of scripts you can copy and paste into your command line to do the job for you ;)

## Organise CSS directory
This command performs the following for a Rails project:
- Creates a `styles` folder in `app/assets/stylesheets/`
- Creates all the `sass` files required according to MIA standard
- Converts `application.css` to a sass file
- Imports all the new files into `application.css.sass`
```mkdir app/assets/stylesheets/styles && touch app/assets/stylesheets/styles/ _00_fontface.sass app/assets/stylesheets/styles/_00_variables.sass app/assets/stylesheets/styles/_10_layout.sass app/assets/stylesheets/styles/_10_typography.sass app/assets/stylesheets/styles/_20_animations.sass app/assets/stylesheets/styles/_20_buttons.sass app/assets/stylesheets/styles/_20_icons.sass app/assets/stylesheets/styles/_20_links.sass app/assets/stylesheets/styles/_30_footer.sass app/assets/stylesheets/styles/_30_nav.sass app/assets/stylesheets/styles/_40_home.sass && mv app/assets/stylesheets/application.css app/assets/stylesheets/application.css.sass && printf "\n@import './styles/*'" >> app/assets/stylesheets/application.css.sass```