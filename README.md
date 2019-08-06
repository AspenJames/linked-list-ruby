# Linked List with Tail Pointer

## Structure

There are two Ruby classes: Element and LinkedList. The definitions for these
are in `lib/`. There is a test suite written using [RSpec][rspec], those files
are located in `spec/`.

## Tests

To run the automated tests, first install all dependencies using
[Bundler][bundler], then issue the `rspec` command:

```bash
bundle install
rspec
```
There is a configuration file that sets some default display options for the
test runner, feel free to edit these or delete the `.rspec` file.

## Contributing

Feel free to check out the code in `lib/` and refactor, it could probably
benefit from some efficiency/readability edits. If you feel like sharing those
refactors or rewrites, submit an [issue][issue] or a [pull request][pr]. For
more information on pull requests, check out [this tutorial by Digital
Ocean][do].

[rspec]: http://rspec.info/
[bundler]: https://bundler.io/
[issue]: https://github.com/AspenJames/linked-list-ruby/issues
[pr]: https://github.com/AspenJames/linked-list-ruby/pulls
[do]: https://www.digitalocean.com/community/tutorials/how-to-create-a-pull-request-on-github
