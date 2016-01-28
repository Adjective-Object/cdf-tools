#wat
a simple watson cli

Be sure to set the credentials for your natural language classifier 
in the top of the file before using this tool.

## Actions:
 - `wat query {id}` : check the status of a classifier. If no classifier
    id is supplied, it queries the overall status of 
    all classifiers

 - `wat classify {id}` : classifies a body of text provided as a csv
    with a given classifier id

 - `wat delete {id}` : deletes a given classifier

 - `wat train {name} {ibmcsv}`: Trains a classifier with an ibm csv

