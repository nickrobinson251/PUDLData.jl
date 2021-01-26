const DATASET_CHECKSUM_V1_0_0 = Dict(
    "pudl-eia860-eia923" => "2ab91241d96985102cd8917c7d55c7943bd3d22364b99b8d8dfb365b2fe43cb4",
    # "pudl-eia860-eia923-epacems" => "TODO"
    "pudl-ferc1" => "0051afa03da53d7655b586641f1cebe46e3df97cb7239f8f467daa8fc2ea28fa",
)
const DATASET_DESCRIPTION_V1_0_0 = Dict(
    "pudl-eia860-eia923" => """
        Data originally collected and published by the [US Energy Information Administration](https://www.eia.gov/)
        (US EIA). The data from [EIA Form 860](https://www.eia.gov/electricity/data/eia860/) covers the years 2011-2018.
        The [Form 923 data](https://www.eia.gov/electricity/data/eia923/) covers 2009-2018.
        A large majority of the data published in the original data sources has been included, but some parts,
        like fuel stocks on hand, and EIA 923 schedules 6, 7, & 8 have not yet been integrated.
        """,
    "pudl-eia860-eia923-epacems" => """
        This data package contains all of the same data as the `pudl-eia860-eia923` package,
        as well as the Hourly Emissions data from the US Environmental Protection Agency's (EPA's)
        [Continuous Emissions Monitoring System](https://www.epa.gov/emc/emc-continuous-emission-monitoring-systems)
        (CEMS) from 1995-2018. The EPA CEMS data covers thousands of power plants at hourly resolution for decades,
        and contains close to a billion records.
        """,
    "pudl-ferc1" => """
        Seven data tables from [FERC Form 1](https://www.ferc.gov/docs-filing/forms/form-1/data.asp)
        are included, primarily relating to individual power plants, and covering the years 1994-2018
        (the entire span of time for which FERC provides this data).

        These tables are the only ones which have been subjected to any cleaning or organization for
        programmatic use within PUDL. The complete, raw FERC Form 1 database contains 116 different
        tables with many thousands of columns of mostly financial data.
        We will archive a complete copy of the multi-year FERC Form 1 Database as a file-based SQLite
        database at Zenodo, independent of this data release.
        It can also be re-generated using the `catalystcoop.pudl` Python package and the original
        source data files archived as part of this data release.
        """,
)
const VERSION_DESCRIPTION_V1_0_0 = """
    Dataset: PUDL Data Release v1.0.0
    Website: https://zenodo.org/record/3653159
    Author: Selvans, Zane A., Gosnell, Christina M.
    Date of Publication: February 7, 2020
    License: https://creativecommons.org/licenses/by/4.0/legalcode

    This is the first data release from the
    [Public Utility Data Liberation (PUDL) project](https://catalyst.coop/pudl).
    It can be referenced & cited using https://doi.org/10.5281/zenodo.3653159

    For more information about the free and open source software used to generate this data release,
    see [Catalyst Cooperative's PUDL repository on Github](https://github.com/catalyst-cooperative/pudl),
    and the associated [documentation on Read TheDocs](https://catalystcoop-pudl.readthedocs.io/en/v0.3.1/).
    This data release was generated using v0.3.1 of the `catalystcoop.pudl` python package.
    """
