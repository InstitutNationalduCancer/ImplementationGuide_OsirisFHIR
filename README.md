# Getting started

## Dependencies
Install [java](https://docs.oracle.com/en/java/javase/15/install/installation-jdk-macos.html#GUID-F575EB4A-70D3-4AB4-A20E-DBE95171AB5F) and [ruby](https://www.ruby-lang.org/fr/documentation/installation/)

1. Update FHIR IG publisher
```
bash _updatepublisher.sh
```

2. Install sushi


`npm install -g fsh-sushi` or `yarn add fsh-sushi`
 

3. Install jekyll 
```
gem install bundler jekyll
```

If you have permission issues, you may look at this [jekyll doc](https://jekyllrb.com/docs/troubleshooting/#no-sudo)


## Launch sushi
Here, you will generate resources using sushi (profiles, extensions, examples, ValueSets, CodeSystems...). It is interesting if you don't want to create the whole IG.
```
sushi .
```

## Launch the FHIR IG publisher

```
bash _genonce.sh
````
Note that `bash _genonce.sh` will first launch sushi to convert .fsh files to json StructureDefinitions and then create the IG
