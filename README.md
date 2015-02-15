#Using the Skeleton#
Whenever you want to start a new project, just do this:

1. Make a copy of your skeleton directory. Name it after your new project.

2. Rename (move) the lib/NAME.rb file and lib/NAME/ directory to be the name of your project or whatever you want to call your root module. Do the same with /bin/NAME. Rename tests/test_NAME.rb to also have your module name. [1]

3. Edit your Gemspec to have all the information for your project. Rename it to match your module name as well.

4. Double check it's all working by using ruby tests/test_yourproject.rb again.

5. Start coding.

SOURCE: http://learnrubythehardway.org/book/ex46.html

[1]: If you have rename installed a handy way to do all of the renaming at once is (remove the `-n` flag when you have verified this does what you want it to): 

```
Computer:~/Projects/ruby-skeleton$ find . -name "*NAME*" | xargs rename -n 's/NAME/EXAMPLE/'
'./bin/NAME' would be renamed to './bin/EXAMPLE'
'./lib/NAME' would be renamed to './lib/EXAMPLE'
'./lib/NAME.rb' would be renamed to './lib/EXAMPLE.rb'
'./NAME.gemspec' would be renamed to './EXAMPLE.gemspec'
'./tests/test_NAME.rb' would be renamed to './tests/test_EXAMPLE.rb'
```

