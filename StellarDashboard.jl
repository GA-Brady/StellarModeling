### A Pluto.jl notebook ###
# v0.20.4

using Markdown
using InteractiveUtils

# ╔═╡ 3a9c8be6-e990-11ef-044c-57e8b712c0fb
#=
Garrett Brady - gab5654@psu.edu

Start: Feb 12th, 2025

This notebook is the dashboard project for ASTRO-416
Goals: 
- Ingest SDSS DR17 MaSTAR data
	- Focus on Star Clusters
		- Write good ADQL queries for SDSS to get cleaner data
- fill in the rest later...
=#

# ╔═╡ 1ad89925-9707-497f-b682-9f509910d361
function dec_str_to_deg(s::AbstractString)
	substrs = split(s)
	@assert length(substrs) == 3
	(d,m,s) = parse.(Float64,substrs)
	dec_degrees = d+(m+s/60)/60
end;

# ╔═╡ 0b3b5062-ab99-4a15-8a33-70479c9828bc
function ra_str_to_hours(s::AbstractString)
	substrs = split(s)
	@assert length(substrs) == 3
	(h,m,s) = parse.(Float64,substrs)
	ra_hours = h+(m+s/60)/60
end;

# ╔═╡ fcc9871f-62b8-459b-a7d0-4b5a18fb50c5
# Generating a test star for searching the SDSS database
begin
	ra_herc_72 = ra_str_to_hours("17 20 39.6");
	dec_herc_72 = dec_str_to_deg("32 28 04");
	show("RA: $ra_herc_72, DEC: $dec_herc_72")
end

# ╔═╡ Cell order:
# ╠═3a9c8be6-e990-11ef-044c-57e8b712c0fb
# ╠═1ad89925-9707-497f-b682-9f509910d361
# ╠═0b3b5062-ab99-4a15-8a33-70479c9828bc
# ╠═fcc9871f-62b8-459b-a7d0-4b5a18fb50c5
