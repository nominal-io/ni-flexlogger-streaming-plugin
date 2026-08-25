# ni-flexlogger-streaming-plugin
Plugins for NI FlexLogger® which stream test data to Nominal Core. Full docs (here)[https://docs.nominal.io/warehouse/documentation/connectors-and-sdks/flexlogger].

Two plugins are provided:

- **Nominal-Streamer** streams a user-selected list of channels to Nominal Core live, while the test runs.
- **Nominal-TDMS-Upload** runs continuously without streaming live. It waits for a message from NI FlexLogger® indicating that a TDMS file is complete, then opens that file and streams its contents to Nominal Core.

Both plugins subscribe to input channels only. As with the logging built into NI FlexLogger®, output channels cannot be recorded. Nominal-Streamer can be configured to record every analog input channel with a single button press.

## Install and Instantiation

### Install
Download the latest release and place `Nominal-Streamer` and `Nominal-TDMS-Upload` in the FlexLogger® plugins directory:
   `C:\Users\Public\Documents\National Instruments\FlexLogger\Plugins\IOPlugins`

### Instantiation
In your FlexLogger® project, open the **Channel Specification** tab and select **Add channels > Plug-in**, then pick the plugin you want. 

## Configuration Data
All codebases require an API key and an RID to operate.

### Nominal API Key
This key can be generated as described in the [nominal SDK documentation](https://docs.nominal.io/core/sdk/python-client/authentication#generating-an-api-key). Keep this key secret.


### Nominal Dataset RID
A dataset can be created by [first creating an asset](https://docs.nominal.io/core/documentation/platform/data/creating-an-asset#create-an-asset) and then by [creating and/or associating a dataset](https://docs.nominal.io/core/documentation/platform/data/creating-an-asset#add-a-data-source) with the asset. This key is just an identifier, not a secret.

## Plugin Configuration

### Nominal-Streamer
This plugin requires the user to select a channel list in addition to the common configuration above. Only these channels will be logged, at the rate FlexLogger® provides data to the plugin.

Required configuration:
 - Nominal API Key (see Shared Configuration Requirements)
 - Nominal Dataset RID (see Shared Configuration Requirements)
 - Channel List


### Nominal-TDMS-Upload
This plugin automatically uploads the content of every file logged by FlexLogger® and thus requires no additional configuration.

Required configuration:
 - Nominal API Key (see Shared Configuration Requirements)
 - Nominal Dataset RID (see Shared Configuration Requirements)


## Dependencies
All codebases below depend on these VIPM packages:
 - [Nominal.io Client](https://www.vipm.io/package/nominal_lib_nominal_io_client/)

In addition, to build Nominal-Streamer and Nominal-TDMS-Upload you will require:
 - [FlexLogger® Plug-In Development Kit](https://www.ni.com/en/support/downloads/software-products/download.flexlogger-plug-in-development-kit.html)


## Trademarks
NI® (National Instruments®) and NI FlexLogger® are registered trademarks of NI®.
All other trademarks are the property of their respective owners.
