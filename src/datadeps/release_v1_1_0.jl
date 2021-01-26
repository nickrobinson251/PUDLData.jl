register(DataDep(
    "pudl-release-v1.1.0",
    """
    $VERSION_DESCRIPTION_V1_1_0

    # Included Data Packages
    This release consists of three tabular data packages, conforming to the standards published by Frictionless Data and the Open Knowledge Foundation. The data are stored in CSV files (some of which are compressed using gzip), and the associated metadata is stored as JSON. These tabular data can be used to populate a relational database.

    ## pudl-eia860-eia923
    $(DATASET_DESCRIPTION_V1_1_0["pudl-eia860-eia923"])
    ## pudl-eia860-eia923-epacems
    $(DATASET_DESCRIPTION_V1_1_0["pudl-eia860-eia923-epacems"])
    ## pudl-ferc1
    $(DATASET_DESCRIPTION_V1_1_0["pudl-ferc1"])

 # Using the Data

    The data packages are just CSVs (data) and JSON (metadata) files. They can be used with a variety of tools on many platforms.
    However, the data is organized primarily with the idea that it will be loaded into a relational database, and the PUDL Python package that was used to generate this data release can facilitate that process.
    Once the data is loaded into a database, you can access that DB however you like.
    """,
    [
        "https://zenodo.org/api/files/d03ca12b-ac05-4fd9-8cd4-0be805c1fc99/archived-environment.yml",
        "https://zenodo.org/api/files/d03ca12b-ac05-4fd9-8cd4-0be805c1fc99/data-release.log",
        "https://zenodo.org/api/files/d03ca12b-ac05-4fd9-8cd4-0be805c1fc99/data-release-settings.yml",
        "https://zenodo.org/api/files/d03ca12b-ac05-4fd9-8cd4-0be805c1fc99/data-release.sh",
        "https://zenodo.org/api/files/d03ca12b-ac05-4fd9-8cd4-0be805c1fc99/load-pudl.sh",
        "https://zenodo.org/api/files/d03ca12b-ac05-4fd9-8cd4-0be805c1fc99/pudl-eia860-eia923-epacems.tgz",
        "https://zenodo.org/api/files/d03ca12b-ac05-4fd9-8cd4-0be805c1fc99/pudl-eia860-eia923.tgz",
        "https://zenodo.org/api/files/d03ca12b-ac05-4fd9-8cd4-0be805c1fc99/pudl-ferc1.tgz",
        "https://zenodo.org/api/files/d03ca12b-ac05-4fd9-8cd4-0be805c1fc99/pudl-input-data.tgz",
        "https://zenodo.org/api/files/d03ca12b-ac05-4fd9-8cd4-0be805c1fc99/README.md",
        "https://zenodo.org/api/files/d03ca12b-ac05-4fd9-8cd4-0be805c1fc99/reproduce-data-release.sh",
    ],
))
