const _pkg_root = dirname(dirname(@__FILE__))
const _pkg_deps = joinpath(_pkg_root,"deps")
const _pkg_assets = joinpath(_pkg_root,"assets")

!isdir(_pkg_assets) && mkdir(_pkg_assets)

deps = [
    "https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.9.0/katex.min.js",
    "https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.9.0/katex.min.css",
    # "https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.9.0/contrib/auto-render.min.js"
]

for dep in deps
    download(dep, joinpath(_pkg_assets, splitdir(dep)[2]))
end
