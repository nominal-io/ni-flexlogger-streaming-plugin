# ni-flexlogger-streaming-plugin

Everything a person reads in this repo follows the Nominal docs hub's writing rules:

@../pub-docs/CLAUDE.md

If that import comes up empty, pub-docs isn't checked out beside this repo. Read
https://github.com/nominal-io/pub-docs/blob/main/CLAUDE.md instead. Its "Building and checking"
and "Repo conventions" sections are about pub-docs itself and don't apply here.

The rules cover more than the docs in `docs/`:
- the README
- each plugin's description, in `Nominal-Streamer.xml` and `Nominal-TDMS-Upload.xml`
- the parameter names FlexLogger shows in each plugin's configuration dialog, set in its
  `Initialize.vi`
- every error and log message the plugins write
- VI descriptions and block diagram comments

The user docs quote the parameter names word for word, so renaming one is a docs change too.
`docs/CLAUDE.md` has the rules for the pages themselves.
