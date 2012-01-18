
* Programming Language and tools - Not yet decided but the total architecture should be simple, portable, bug-free, well-documented and user friendly.

* Interface
  * CLI with standard features, README, help ("about", "usage", "options", "examples" etc.)
  * Operation
     * Syntax of parameters - To be decided, probably after knowing what each operation will exactly do and what the possible parameters are.
     * 'Add' - This shall add new vcf information to current population frequency database.
        * Counting method - on researching . . . . 
        * Parameters
           * Input
              * VCF file - One file at a time. It can be either single or multicolumn file. To count the number of individuals in the file, it will be done by counting number of columns in the header line.
                 * Assumption - Anything not follow the assumptions will be considered as errors and will be printed out at standard output and log file.
                    1. To counting frequency, it must have 'FS' INFO field in multicolumn variants file.
                    2. To be able to backtracking to count bialleles, column name in the header line in multicolumn vcf file must represent the exact location of one individual variant file. The default is './'
              * Tag(s) - This is for adding any extra information, mostly diseases, for the given variant files in the database.
                 * Assumption - on researching . . . . . 
           * Output
              * Database file - This is where the population frequency and related information are stored
                 * Assumption - Anything not follow the assumptions will be considered as errors and will be printed out at standard output and log file.
                    1. To make it less option/more simple, database location must not be configurable. I must be in './database/' folder from script directory.
     * 'Get' - This shall print out the population frequency for the given condition in 'Filter' parameter. Default is printing out everything
        * Parameters
           * Filter - Custom made by user. Format of this field is on researching . . . .

* Special features
  * Backup - This shall be done once, in the beginning, on every interface calls that "write" the database. It should be done automatically, silently, simply and pretty fast.
  * Logging - For
     1. Tracking "writing-database" calls so that user can know what have been done to the database.
     2. Any kind of errors, 'invalid syntax', 'database corrupted', 'invalid parameters' etc.
  * Restore - This feature will be implemented or not up to how complicated the Backup is but, at least, it should be in manual.

* Documents - Embedded in script, '-h' and README
* Testing
  * Method - It's not yet known and on researching. I'll let you know later.
  * Documents - Let's discuss about this later.

