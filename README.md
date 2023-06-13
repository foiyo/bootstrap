@Building Finder#

To get started you need to run the bootstrap.sh script in this directory which
is going to create the /finder directory and populate it by cloning
the ##git@github.com:foiyo/finder## repo.  Once the repo is pulled you must run the
/finder/setup.sh script which will install all the Linux packages needed to
build and run finder like gcc, gfortran, OpenMotif, various compatability libraries
etc. etc.   After the Linux environment is installed the Oracle database software
will be located and installed in /u01.  The database is complete with all the
schemas that existed in 1992.   esi, codes, default_project and all the users
that had asccounts as well.  All database accounts have the password set to the
account name like esi/esi codes/codes  julian/julian etc. etc.

When the setup.sh script finishes you should logout and log back in so that you
pick up the new environment variables etc such as FINDER_HOME and ORACLE_HOME etc.
After you logout and login you can cd to /finder and type 'make'.

Just for fun you  might want to use the command 'time make' and see how fast your
builds are.  My system has 5 cores assigned to the virtual machine and about 6 Gig
of memory.   My build times are around 1 minute 30 seconds.

  **Note**
The FIRST time you run make after the setup.sh step, the make will startup Oracle
so don't bother timing that make since it has the long step of starting the database.

If you recall, part of the source code for Finder is generated from the database:
esi.FINDER_MESSAGES is read by mg_config to create all the error and message include
files that live in /finder/gen.

Enjoy this trip down memory lane.  I find this very sentimental.
Julian
