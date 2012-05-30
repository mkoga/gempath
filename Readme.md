# gempath

A simple script used to print the path to a given gem.

## Why

A lot of times when I'm working on a project, I want to quickly view the source of a certain gem. Since I use Bundler, I can usually do:
```bash
vim $(bundle show GEMNAME)
```

But, other times, when I want to examine random gems, but don't want to to add it to my Gemfile, I end up doing something like:
```bash
gem list -d GEMNAME
# look for gem path, copy/paste/cd to path
# cd GEMNAME-x.x.x
```

That takes too long. Hence, gempath.

## Usage

The most basic scenario:
 ```bash
$ gempath rails
> /Users/xxxx/.rvm/gems/ruby-1.9.3-head/gems/rails-3.2.3
```

But what if you have multiple versions of the rails gem installed. gempath supports version strings just like Gemfiles
 ```bash
$ gempath rails -v '=3.2.1'
> /Users/xxxx/.rvm/gems/ruby-1.9.3-head/gems/rails-3.2.1
```

Once I have the path, it's a simple cd, and I'm off and reading code:
```bash
$ cd $(gempath rails -v '=3.2.1')
```

or even quicker
```bash
$ vim $(gempath rails -v '=3.2.1')
```

