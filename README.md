# LTPDA toolbox
[Davide Dal Bosco](https://github.com/davidedalbosco)'s version of the [LISA Technology Package Data Analysis](https://www.lisamission.org/ltpda/) (LTPDA for friends) toolbox.

## Changelog

### May 2025
I realized that the vanilla version of LTPDA was incompatible with MATLAB release R2024b (and subsequent ones). This was because it had a strong dependence on the method `newarray` to instantiate an array of of objetcs of a generic class `className` with the following syntax
```
foo = className.newarray([sz1, ..., szN])
```
Apparently, in the releases of MATLAb after (and including) R2025b this method has been replaced by the function [`createArray`](https://www.mathworks.com/help/matlab/ref/createarray.html) with the updated syntax
```
foo = createArray( [sz1, ..., szN], 'className')
```

### May 2024

I updated the Java libraries in the ``jar`` folder to the most recent version. This includes the MySQL connector. I had to modify the LTPDA routines that manage the database connection and queries to make them work with the new libraries. 

The neat part is that all the code remains compatible with the older generations of MySQL. 
