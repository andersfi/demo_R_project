#########################################################################
#
# Demo script
#
#########################################################################

#-----------------------------------------------------------------------
# Download data from external source. This is best practice for making 
# your code transportable among different computers. 
#-----------------------------------------------------------------------

# first create new folder (./data/raw_data) to store the files 
# locally (cache down the data) - remember to update gitignore folder (add 
# the line */data/raw_data to the .gitignore file)

dir.create("data/raw_data", showWarnings = FALSE, recursive = TRUE)

