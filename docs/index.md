% Merged from fern-docs 1dbaeb46 (fern/docs/pages/developers/documentation/connectors-and-sdks/flexlogger.mdx,
% fern/docs/pages/core/sdk/labview/flexlogger.mdx).

# NI FlexLogger

{.lead}
Send test data from your NI FlexLogger® data acquisition project to a Nominal dataset. Stream the channels you select as FlexLogger® acquires them, or upload FlexLogger®'s TDMS files as it closes them.

Releases and source code are on [GitHub](https://github.com/nominal-io/ni-flexlogger-streaming-plugin).

:::{note}
**New to FlexLogger®?** NI FlexLogger® is a configuration-based data acquisition tool for NI-DAQmx devices and other hardware. See [ni.com/flexlogger](https://www.ni.com/en/shop/data-acquisition-and-control/flexlogger).
:::

The repository provides two plugins:

- **Nominal-Streamer** streams the input channels you select to Nominal live.
- **Nominal-TDMS-Upload** waits for FlexLogger® to close a TDMS file, then uploads everything FlexLogger® logged to it.

## Requirements

To use the plugins, you need NI FlexLogger® in an [edition](https://www.ni.com/en/shop/data-acquisition-and-control/flexlogger/select-edition.html) that supports plugins.

To build them from source, you also need:

- LabVIEW 2020 SP1 or later, 64-bit
- The [FlexLogger® Plug-In Development Kit](https://www.ni.com/en/support/downloads/software-products/download.flexlogger-plug-in-development-kit.html) version for your LabVIEW, from NI's [compatibility table](https://www.ni.com/en/support/documentation/compatibility/25/flexlogger-plug-in-development-kit-compatibility-with-flexlogger-and-labview.html)
- The [Nominal client for LabVIEW](site:/ni/labview/), installed from VIPM

## Connect to Nominal

The plugins authenticate with a Nominal API key; see [API keys setup](site:/quickstart/quickstart/api-keys-setup/). They write to a dataset, so you also need [the dataset's RID](site:/quickstart/quickstart/quick/quick-dataset-rid/). To keep that data with the system it came from, [attach the dataset to an asset](site:/quickstart/quickstart/quick/quick-attach-dataset/). Keep the API key secret. The dataset RID is an identifier, not a credential.

## Install the plugins

1. Download the zip from the [latest release](https://github.com/nominal-io/ni-flexlogger-streaming-plugin/releases/latest).
2. Extract it to the FlexLogger® plugins directory, `C:\Users\Public\Documents\National Instruments\FlexLogger\Plugins\IOPlugins`. The zip holds a `Nominal-Streamer` folder and a `Nominal-TDMS-Upload` folder.
3. If FlexLogger® is open, restart it. FlexLogger® loads plugins when it starts.

To build from source instead:

1. Clone the [repository](https://github.com/nominal-io/ni-flexlogger-streaming-plugin).
2. In LabVIEW, open the plugin's project, `Nominal-Streamer\Nominal-Streamer.lvproj` or `Nominal-TDMS-Upload\Nominal-TDMS-Upload.lvproj`.
3. Under **Build Specifications**, right-click **Nominal-Streamer Packed Library** or **Nominal-TDMS-Upload Packed Library** and select **Build**.

The build installs the plugin in the same plugins directory. If your FlexLogger® project is open, close and reopen it to load the new build.

## Load the plugin in FlexLogger®

1. Launch FlexLogger® and open or create a project.
2. On the **Channel Specification** tab's toolbar, select **Add channels > Plug-in**, then **Nominal-Streamer** (live) or **Nominal-TDMS-Upload** (on file completion). Using both is redundant.
3. Click **Configure**, the gear at the right edge of the plugin's header, and fill in its settings:
   - **nominal api key**: your API key.
   - **dataset RID**: the RID of the dataset to write to.
   - **Select Channels** (Nominal-Streamer only): the channels to stream.

Nominal-Streamer sends the channels you selected to Nominal as FlexLogger® acquires them. Nominal-TDMS-Upload uploads each TDMS file once FlexLogger® closes it.

If you find a bug or need help, open an issue on [GitHub](https://github.com/nominal-io/ni-flexlogger-streaming-plugin). Don't post sensitive data or credentials there.

## Trademarks

NI®, NI LabVIEW®, and NI FlexLogger® are registered trademarks of NI®. All other trademarks are the property of their respective owners.
