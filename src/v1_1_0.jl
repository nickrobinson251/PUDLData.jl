const DATASET_CHECKSUM_V1_1_0 = Dict(
    "pudl-eia860-eia923" => "0f6a4ebe203793a46538de6797bca3bb7c43228372b989bbff9c91bef13c5e50",
    "pudl-eia860-eia923-epacems" => "f99575ad2b3faf8589fed4ee730f6ed723754b37dd8c8f179025cf0b8b173f4f",
    "pudl-ferc1" => "7cc385cdbb6d460b64ce32bfa8c64e2d940ab2e7c16d8b92371c88279bd9d8f5",
)
const DATASET_DESCRIPTION_V1_1_0 = Dict(
    "pudl-eia860-eia923" => """
        Data originally collected and published by the [US Energy Information Administration](https://www.eia.gov)
        (US EIA) in their Form 860 and Form 923, covering the years 2009-2018.  A large majority
        of the data published in the original data sources has been included, but some parts,
        like fuel stocks on hand, and EIA 923 schedules 6, 7, & 8 have not yet been integrated.
        """,
    "pudl-eia860-eia923-epacems" => """
        This data package contains all of the same data as the `pudl-eia860-eia923` package,
        as well as the Hourly Emissions data from the US Environmental Protection Agency's (EPA's)
        [Continuous Emissions Monitoring System](https://www.epa.gov/emc/emc-continuous-emission-monitoring-systems)
        (CEMS) from 1995-2018. The EPA CEMS data covers thousands of power plants at hourly
        resolution for decades, and contains close to a billion records.
        """,
    "pudl-ferc1" => """
        Seven data tables from [FERC Form 1](https://www.ferc.gov/docs-filing/forms/form-1/data.asp)
        are included, primarily relating to individual power plants, and covering the years 1994-2018
        (the entire span of time for which FERC provides this data).

        These tables are the only ones which have been subjected to any cleaning or organization
        for programmatic use within PUDL. The complete, raw FERC Form 1 database contains 116
        different tables with many thousands of columns of mostly financial data.
        We will archive a complete copy of the multi-year FERC Form 1 Database as a file-based
        SQLite database at Zenodo, independent of this data release. It can also be re-generated
        using the `catalystcoop.pudl` Python package and the original source data files archived
        as part of this data release.
        """,
)
const VERSION_DESCRIPTION_V1_1_0 = """
    Dataset: PUDL Data Release v1.1.0
    Website: https://doi.org/10.5281/zenodo.3672068
    Author: Selvans, Zane A., Gosnell, Christina M.
    Date of Publication: February 18, 2020
    License: https://creativecommons.org/licenses/by/4.0/legalcode

    PUDL Data Release 1.1.0

    This is the second data release from the
    [Public Utility Data Liberation (PUDL) project](https://catalyst.coop/pudl).
    It can be referenced & cited using https://doi.org/10.5281/zenodo.3672068

    For more information about the free and open source software used to generate this data release,
    see  [Catalyst Cooperative's PUDL repository on Github](https://github.com/catalyst-cooperative/pudl),
    and the associated [documentation on Read The Docs](https://catalystcoop-pudl.readthedocs.io/en/v0.3.2/).
    This data release was generated using v0.3.2 of the `catalystcoop.pudl` python package.
    """
