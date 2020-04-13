# MultivariableCalculusAndLinearAlgebra
MCLA notes


## Usage

### Scripts

##### Make New Sections

<pre>
scripts/make <em>course</em> <em>chapter</em> <em>section</em>
</pre>

The course must match the directory name. For example, to create Section 17.2 of Multivariable Calculus, run from the the root project directory.
```
scripts/make MultivariableCalculus 17 2
```

##### Compile all notes into pdf
This script is not recommended, especially if you have a lot of different .tex files, as it is recursive and may take some time to run. It should only be used before publishing
```
scripts/compile
```