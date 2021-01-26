const PUDL_DESCRIPTION = """
	This archive contains raw input data for the Public Utility Data Liberation (PUDL) software developed by [Catalyst Cooperative](https://catalyst.coop/).
	It is organized into [Frictionless Data Packages](https://specs.frictionlessdata.io/data-package/).
	For additional information about this data and PUDL, see the following resources:
	* [The PUDL Repository on GitHub](https://github.com/catalyst-cooperative/pudl)
	* [PUDL Documentation](https://readthedocs.org/projects/catalystcoop-pudl/)
	* [Other Catalyst Cooperative data archives](https://zenodo.org/communities/catalyst-cooperative/)
	"""

function unpack_if_zipped(filename)
    ext = last(splitext(filename))
    f = ext == ".tgz" || ext == ".zip" ? unpack : identity
    return f(str)
end

"""
    pudl_datasets() -> Vector{String}

List the names of the datasets available as `DataDep`s.

Each dataset is available via `dataset"name"`. See DataDeps.jl for details.
"""
pudl_datasets() = sort(collect(filter(startswith("pudl"), keys(DataDeps.registry))))
