# ChimeraArts.org

The website source code for <http://danawoodman.com>.


## Development

The website is built with [Hugo](http://hugo.spf13.com), a static site generator written in Golang.

To develop using the site, just download the Hugo binary in your platform (Mac, Win, Linux) and run `hugo server --watch --source=./` in this directory.

Any changes to the `static`, `content`, and `layouts` directories will automatically be compiled into the `public` dir. 

Site content is found in the `content` directory and is written in Markdown.


## Deployment

Once you've completed your changes, commit the changes and submit a pull request.

This project contains a git subtree at `public`, so in order to update the compiled content, you must push your changes to the subtree.

The subtree was created using:

```bash
git subtree add --prefix public https://github.com/danawoodman/danawoodman.github.io.git master --squash
```

We have a convenience utility that does this for you found in `deploy.sh` which you can use like this:

```bash
./deploy.sh 'fixing a typo'
```

... which builds your changes, commits the code and pushes the updates to both github repos. 


## License

Content released under the [Creative Commons Share-Alike 2.5 License](http://creativecommons.org/licenses/by-sa/2.5/).


## Credits

Created by [Dana Woodman](http://danawoodman.com).

Special thanks to [Hugo](http://hugo.spf13.com).
