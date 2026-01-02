# Sonic Advance 3
[![CI status][ci-badge]][ci-status-link] [![Decompilation Progress][progress-badge]][progress-link] [![Contributors][contributors-badge]][contributors-link] [![Discord][discord-badge]][discord-link]

[ci-status-link]: https://github.com/SAT-R/sa3/actions/workflows/build.yml
[ci-badge]: https://github.com/SAT-R/sa3/actions/workflows/build.yml/badge.svg

[progress-link]: https://github.com/SAT-R/sa3
[progress-badge]: https://img.shields.io/endpoint?url=https://sat-r.github.io/sa3/reports/progress-sa3-shield.json

[contributors-link]: https://github.com/SAT-R/sa3/graphs/contributors
[contributors-badge]: https://img.shields.io/github/contributors/SAT-R/sa3

[discord-badge]: https://img.shields.io/discord/1052347299457671200
[discord-link]: https://discord.gg/vZTvVH3gA9

This is a work in progress matching decompilation of Sonic Advance 3

It so far builds the following ROM:
* [**sa3.gba**](https://datomatic.no-intro.org/index.php?page=show_record&s=23&n=1521) `sha1: 685af3a2dc0f1b3f8922e73ec42c1dc92e210e39` (Europe) (En,Ja,Fr,De,Es,It)

**Compiler version specifics for SA3**

On December 10th 2024 we integrated previously unused LibC math code (dubbed 'newlib') into the codebase.
Since that is included through linking with agbcc's LibC binary, you HAVE to update your version of the compiler if you're using a version that is older than:
* [**this**](https://github.com/SAT-R/agbcc/commit/cb2282c6509d0f91414db4a50cadaa695c693ed3) commit if you use our fork
* [**this**](https://github.com/jiangzhengwenjz/agbcc/commit/ca3795d8e139d2c79f586f617cac2a3a52fddff5) commit if that is the compiler fork you are using

**Provide assets**

You must have a copy of the Sonic Advance 3 ROM mentioned above named `baserom_sa3.gba` in the repository's root directory.

