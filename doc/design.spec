
* Programming Language and tools - Mainly Perl,bash and vcf-tools

* Interface
  * CLI with standard features, README, help ("about", "usage", "options", "examples" etc.)
  * Operation
     * 'Add' - This shall add new vcf information to current population frequency database.
        * Counting method - By counting the number of alternative alleles that are parsed from "GT" field in vcf file
	* Performance - BigO(n+m) since it's a sequential read on both sides, assuming that the variants in vcf file are sorted
        * Parameters
           * Input
              * VCF file - One file at a time. It can be either single or multicolumn file. To count the number of individuals in the file by parsing the header line in vcf file and counting the number of extra columns. This can be done using vcf tools
              * Tag(s) - This is for adding any extra information, mostly diseases, for the given variant files in the database.
           * Output
              * Database file - This is where the population frequency and related information are stored
        * Validation
           * This tool shall be able to detect if the content of new vcf file was already in the database. This can be implemented using 'Digest Message', sha512sum.
           * This tool shall be able to detect if the input tags are in the correct order. If not, change it to the correct order.
           * This tool shall be able to detect if the input tags are redundant. If yes, remove the duplicated.
     * 'Get' - This shall print out the population frequency unless it appear in 'tags' parameter. Default is printing out everything
        * Parameters
           * tags - tags to be excluded

* Special features
  * Backup - This shall be done once before make any changes to database. This can simply done by making another copy of database and adding time suffix
  * Logging - For
     1. Tracking "writing-database" calls so that user can know what have been done to the database.
     2. Any kind of errors, 'invalid syntax', 'database corrupted', 'invalid parameters' etc.
  * Restore - This can be done by simply rename the file.

* Documents - Embedded in script, '-h' and README
* Testing
  * Method - Unit test and performance test. Both can be implemented as automated test.
  * Documents - All related test document will be repository.

* Limitation
  * Due to performance - bvd-add shall not check if the input vcf file is sorted.

