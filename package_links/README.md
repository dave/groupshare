In order to deploy to app engine, all local dev packages need to be under the same directory.

See go.mod: 

```
replace github.com/dave/protod => ./package_links/protod
```