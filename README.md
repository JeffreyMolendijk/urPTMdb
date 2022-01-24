### __urPTMdb__

<p>urPTMdb is a database of gene-sets covering currently underrepresented post-translational moditications (PTMs). Previously published studies and datasets (PRIDE / MASSIVE) are analyzed to identify substrates or interactions relating to PTMs. We have analyzed the results of 58 studies, generating 141 gene-sets covering 18 underrepresented PTMs. Additionally, we generated pathway gene-sets of the primary enzymes involved in the PTMs, as well as consensus gene-sets where replicate studies were available.</p>

<br>
<br>

---

<br>

### __Citation__
<p>The TeaProt / urPTMdb manuscript is currently under review. We will update this section with citation details following publication.</p>

<br>

---

### __Instructions__
The easiest way to use urPTMdb in your research is to directly download `urptmdb_latest.gmt`, which will be updated any time new studies or PTMs are added to urPTMdb. 

<br>

The code used to generate urPTMdb is contained in this directory. 

* `Novel-PTMs.xlsx` contains the studies included in urPTMdb, including the links required to download the raw/processed data.
* The folder `data-script` contains individual scripts for each study to process the data.
* `Novel-PTMs.R` contains the workflow to create folder structures, download data, process data and finally collate all results into a final `urptmdb_latest.gmt` file.

<br> 

To generate urPTMdb locally, you have to clone this repository, install the required packages and execute `Novel-PTMs.R`.

--Bash--

<code>git clone https://github.com/JeffreyMolendijk/urPTMdb.git</code> 

--R--

<code>install.packages("tidyverse")</code> 

> Open `Novel-PTMs.R` & 'Run all' (Ctrl + Shift + Enter)



