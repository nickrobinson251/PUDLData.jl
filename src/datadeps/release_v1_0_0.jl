register(DataDep(
    "pudl-release-v1.0.0",
    """
    $VERSION_DESCRIPTION_V1_0_0

    # Included Data Packages
    This release consists of three tabular data packages, conforming to the standards published by Frictionless Data and the Open Knowledge Foundation. The data are stored in CSV files (some of which are compressed using gzip), and the associated metadata is stored as JSON. These tabular data can be used to populate a relational database.

    ## pudl-eia860-eia923
    $(DATASET_DESCRIPTION_V1_0_0["pudl-eia860-eia923"])
    ## pudl-eia860-eia923-epacems
    $(DATASET_DESCRIPTION_V1_0_0["pudl-eia860-eia923-epacems"])
    ## pudl-ferc1
    $(DATASET_DESCRIPTION_V1_0_0["pudl-ferc1"])

    # Using the Data
    The data packages are just CSVs (data) and JSON (metadata) files. They can be used with a variety of tools on many platforms.
    However, the data is organized primarily with the idea that it will be loaded into a relational database, and the PUDL Python package that was used to generate this data release can facilitate that process.
    Once the data is loaded into a database, you can access that DB however you like.
    """,
    [
        "https://zenodo.org/api/files/ff3b621f-6d31-40a8-b578-e87d7041f27a/archived-environment.yml",
        "https://zenodo.org/api/files/ff3b621f-6d31-40a8-b578-e87d7041f27a/data-release.log",
        "https://zenodo.org/api/files/ff3b621f-6d31-40a8-b578-e87d7041f27a/data-release-settings.yml",
        "https://zenodo.org/api/files/ff3b621f-6d31-40a8-b578-e87d7041f27a/data-release.sh",
        "https://zenodo.org/api/files/ff3b621f-6d31-40a8-b578-e87d7041f27a/load-pudl.sh",
        "https://zenodo.org/api/files/ff3b621f-6d31-40a8-b578-e87d7041f27a/pudl-eia860-eia923-epacems.tgz",
        "https://zenodo.org/api/files/ff3b621f-6d31-40a8-b578-e87d7041f27a/pudl-eia860-eia923.tgz",
        "https://zenodo.org/api/files/ff3b621f-6d31-40a8-b578-e87d7041f27a/pudl-ferc1.tgz",
        "https://zenodo.org/api/files/ff3b621f-6d31-40a8-b578-e87d7041f27a/pudl-input-data.tgz",
        "https://zenodo.org/api/files/ff3b621f-6d31-40a8-b578-e87d7041f27a/README.md",
        "https://zenodo.org/api/files/ff3b621f-6d31-40a8-b578-e87d7041f27a/reproduce-data-release.sh",
    ],
))
