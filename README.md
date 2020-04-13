# MultivariableCalculusAndLinearAlgebra
MCLA notes


## Scripts
All of these scripts should be run from the root project directory.

#### Make New Sections

<pre>
scripts/make <em>course</em> <em>chapter</em> <em>section</em>
</pre>

The course must match the directory name. This is an example of how to create Section 17.2 of Multivariable Calculus.
```
scripts/make MultivariableCalculus 17 2
```

#### Compile All Notes Into PDF
This script is not recommended, especially if you have a lot of different .tex files, as it is recursive and may take some time to run. It should only be used before publishing.
```
scripts/compile
```

#### Clean All Auxiliary Files
Although this script is also recursive, it is not as intensive as the previous script because it is just removing files. However, it is also useful before you finish or whenever you get annoyed with all of the excess files. Try keeping it until the last moment because it reduces build times and increases inverse and foward search on the PDF viewer. It is not that important because the gitignore covers the auxiliary files but it is still nice to have.
```
scripts/clean
```

If you are using LaTeXTools on Sublime Text 3, you can just use <kbd>ctrl/cmd+l</kbd>, <kbd>backspace</kbd> from a .tex file to clean all auxiliary files in the current directory and its subdirectories. This means that if you run this command from the root project directory, it will clean up auxiliary files.
