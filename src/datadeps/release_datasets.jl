for version in (v"1.0.0", v"1.1.0")
    v_description = VERSION_DESCRIPTION[version]
    hash = VERSION_HASH[version]

    dataset2description = VERSION_DATASET_DESCRIPTION[version]
    dataset2checksum = VERSION_DATASET_CHECKSUM[version]

    for dataset in ("pudl-eia860-eia923", "pudl-eia860-eia923-epacems", "pudl-ferc1")
        name = dataset * "-v$version"
        description = v_description * "\n" * dataset2description[dataset]
        checksum = get(dataset2checksum, dataset, nothing)

        register(
            DataDep(
                name,
                description,
                "https://zenodo.org/api/files/$(hash)/$(dataset).tgz",
                checksum,
                post_fetch_method=unpack,
            )
        )
    end
end
