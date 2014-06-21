coursera-getting-and-cleaning-data
==================================

About this Code
---------------

This code was written as a project for the Coursera course Getting and Cleaning Data from Johns Hopkins University.

The code cleans and performs basic analysis on the UCI HAR Dataset.

Given the initial dataset, the script first loads the test and training sets. Then it merges the sets into a single dataset.

The script extracts only the features that are means and standard deviations, as determined by analysis of the feature names provided in the features.txt file in the UCI HAR Dataset.

The resulting features are labeled using the feature names provided in the features.txt file in the UCI HAR Dataset. Activity indexes are converted to their textual descriptions in the activity_labels.txt file in the UCI HAR Dataset.

The cleaned dataset is then grouped by subject and activity, and empty groups are dropped from the dataset. The mean of each group is calculated, resulting in a tidy dataset of means for each feature for each group.

----------------------------------
Instructions for Running this Code
----------------------------------

1. Unzip the HAR dataset such that there is a directory "UCI HAR Dataset" in your current working directory.
2. In R, do `source("run_analysis.R")`. This will load the raw data from the HAR dataset into R, perform processing, and output the tidy dataset to a file called tidy.txt. The contents of tidy.txt are described in CodeBook.md.

-------------------------------------
License and Disclaimer (BSD 3-Clause)
-------------------------------------

Copyright (c) 2014, Edward Venator
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.