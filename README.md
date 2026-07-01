# ni-flexlogger-streaming-plugin
Contains plugins for NI FlexLogger® which are capable of streaming to Nominal Core.

## Dependencies
All codebases below depend on these VIPM packages:
 - (Nominal.io Client)[https://www.vipm.io/package/nominal_lib_nominal_io_client/]

In addition, to build Nominal-Streamer and Nominal-TDMS-Upload you will require:
 - (FlexLogger® Plug-In Development Kit)[https://www.ni.com/en/support/downloads/software-products/download.flexlogger-plug-in-development-kit.html]

## Nominal-Streamer
This plugin provides live streaming of a subset of channels as selected by the user. However, as with the built-in logging provided by NI FlexLogger®, it is only capable of subscribing to input channels. That is, it can be configured to record every analog input channel with one button-press, but cannot be configured to record output channels.

Required configuration:
 - Nominal API Key (see (Shared Configuration Requirements)[#Shared Configuration Requirements])
 - Nominal Dataset RID (see (Shared Configuration Requirements)[#Shared Configuration Requirements])
 - Channel List


## Nominal-TDMS-Upload
This plugin operates continuously but does not provide a live stream of data. Instead, it waits for a message from NI FlexLogger® which indicates that a TDMS file is complete. Then the plugin opens the TDMS file and streams the contents to Nominal Core.

Required configuration:
 - Nominal API Key (see (Shared Configuration Requirements)[#Shared Configuration Requirements])
 - Nominal Dataset RID (see (Shared Configuration Requirements)[#Shared Configuration Requirements]) 


## Shared Configuration Requirements
All codebases require an API key and an RID to operate.

### Nominal API Key
This key can be generated as described in the (nominal SDK documentation)[https://docs.nominal.io/core/sdk/python-client/authentication#generating-an-api-key]. Keep this key secret.


### Nominal Dataset RID
A dataset can be created by (first creating an asset)[https://docs.nominal.io/core/documentation/platform/data/creating-an-asset#create-an-asset] and then by (creating and/or associating a dataset)[https://docs.nominal.io/core/documentation/platform/data/creating-an-asset#add-a-data-source] with the asset. This key is just an identifier, not a secret.





## Trademarks
NI® (National Instruments®) and NI FlexLogger® are registered trademarks of NI®.
All other trademarks are the property of their respective owners.