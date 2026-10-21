# docs/

These pages build here and are published on the Nominal docs hub (nominal-io/pub-docs) at
`/ni/flexlogger/`. The repo's CLAUDE.md brings in the hub's writing rules, and those apply
here in full. This file adds what is specific to the pages.

## Where the facts come from

Quote labels and messages exactly as the source has them, labels in bold.

- Each plugin's name and description: `Nominal-Streamer/Nominal-Streamer.xml` and
  `Nominal-TDMS-Upload/Nominal-TDMS-Upload.xml`.
- The settings in a plugin's configuration dialog: the parameters its `Initialize.vi` creates.
  FlexLogger builds the dialog from them.
- Connecting to Nominal, and the errors when that fails: each plugin's `Configure Session.vi`, plus
  `async stream processor.vi` (Nominal-Streamer) and `Handle Message.vi` and
  `async convert file.vi` (Nominal-TDMS-Upload).
- Where a build installs: the build specification in each plugin's `.lvproj`.
- What a download contains: the zip attached to the GitHub release.
- FlexLogger's own labels, such as **Channel Specification** and the plug-in **Configure** gear:
  the FlexLogger Plug-In Development Kit Manual, which the kit installs in
  `<LabVIEW>\resource\FlexLogger\SDK\`.

The VIs are binary, so their strings don't show up in a text search. Open a VI in LabVIEW to read
them.

The plugins connect through the Nominal client for LabVIEW, which each packed library bundles.
Link to [its docs](site:/ni/labview/) for the client's own behavior. For anything in the Nominal
app, such as the **API keys** page or a dataset's RID, link the hub's quickstart pages rather
than describing the app from memory.

## Rules for these pages

- Readers use FlexLogger to acquire data. Explain only what is Nominal's, and link NI's docs for
  FlexLogger itself.
- The released plugins need no LabVIEW. Assume LabVIEW knowledge only in the steps for building
  from source, and keep what each path needs apart.
- State only what the source shows or what has been run in FlexLogger.
- Keep the Trademarks section at the end of each page that names NI's products.
- Link to other projects on the hub as `[text](site:/{lang}/{project}/{page}/)`, never with an
  absolute URL, so the hub's offline copy works.

## Building

`just build-docs` builds into `docs/_build/dirhtml`, with warnings failing the build as in CI.
Run it before calling a change done. `just serve-docs` serves a live preview on
http://127.0.0.1:8000.

`.github/workflows/docs-check.yml` builds every pull request. `deploy-docs.yml` deploys every
push to `main` to this repo's GitHub Pages, and pub-docs pulls that deploy.
