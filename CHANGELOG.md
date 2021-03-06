## v5.12.0

#### Notes
This release extends support of the SDK to OneView REST API version 1600 (OneView v5.20).

#### Features supported
- Artifact Bundle
- Deployment Group
- Deployment Plan
- Enclosure
- Enclosure Group
- Ethernet Network
- FC Network
- FCOE Network
- Hypervisor Cluster Profile
- Hypervisor Manager
- Interconnects
- Interconnect Types
- Logical Enclosure
- Logical Interconnect
- Logical Interconnect Group
- Network Set
- OS Deployment Plan
- Scope
- Server Certificate
- Server Hardware
- Server Hardware Type
- Storage Pool
- Server Profile
- Server Profile Template
- Storage System
- Uplink Set
- Volume
- Volume Attachment
- Volume Template

## v5.11.0

#### Notes
This release adds support to OneView Rest API version 600/800/1000/1200 for the hardware variants C7000 and Synergy to the features Server Certificate. Extended support to Hypervisor Manager and Hypervisor Cluster Profile Rest API version 1000, and API version 1200.

#### New Resource
 - Server Certificate

#### Features supported
- Hypervisor Manager
- Hypervisor Cluster Profile

#### Bug fixes & Enhancements
- [#394](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/394) Travis build failed as disable method is deprecated for Pry Gem.

## v5.10.0

#### Notes
Extended support to Image Streamer Rest API version 800((ImageStreamer v4.10)), API version 1000 (ImageStreamer v4.20) and API version 1020 (ImageStreamer v5.00).
This release does not support any new features added in API versions 800,1000 and 1020.

#### Features supported
- Build Plan
- Deployment Plan
- Golden Image
- OS Volume
- Plan Script

## v5.9.0
- This release supports OneView Rest API versions 800/1000/1200 minimally where we can use OneView v4.10/v4.20/v5.0 with this SDK. No new fields are added/deleted to support OneView Rest API 800/1000/1200. Complete support will be done in next releases.
- Bugfix for the update request for enclosure group.
- Bugfix for the create request for logical enclosure.

#### Features Supported
This release adds support to OneView Rest API version 800/1000/1200 for the hardware variants C7000 and Synergy to the already existing features:
- Connection Template
- Firmware Driver
- Interconnect Link Topology
- SAS Logical Interconnect Group

## v5.8.0

#### Notes
- This release removes the support for Ruby 2.2 and added support for Ruby 2.5.
- This release supports OneView Rest API versions 800/1000/1200 minimally where we can use OneView v4.10/v4.20/v5.0 with this SDK. No new fields are added/deleted to support OneView Rest API 800/1000/1200. Complete support will be done in next releases.
- This release also fixes few bugs listed below.

#### Features Supported
This release adds support to OneView Rest API version 800/1000/1200 for the hardware variants C7000 and Synergy to the already existing features:
- Enclosure
- Enclosure Group
- Ethernet Network
- FC Network
- FCoE Network
- Interconnect
- Interconnect Type
- Logical Enclosure
- Logical Interconnect
- Logical Interconnect Group
- Network Set
- Scope
- Server Hardware
- Server Hardware Types
- Server Profile
- Server Profile Template
- Storage Pool
- Storage System
- Uplink Set
- Volume
- Volume Attachment
- Volume Template
- OS Deployment Plan

#### Bug fixes & Enhancements
- [#377](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/377) Travis build failed as Listen dependency does not support Ruby 2.2.x.
- [#372](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/372) Failed to create logical interconnect groups for API600. Fixed by inheriting from API500 resource.

## v5.7.0

#### Notes
Extends support of the SDK to OneView Rest API version 800 (OneView v4.10).
This release fixes one bug listed below.

#### New Resource
 - Hypervisor Cluster Profile
 - Hypervisor Manager

#### Features Supported
This release adds support to OneView Rest API version 800 for the hardware variants C7000 and Synergy to the already existing features:
 - Server Profile Template

#### Bug fixes & Enhancements
- [#366](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/366) Query parameters not working for get_attachable_volumes endpoint

## v5.6.0

#### Notes
This release fixes few bugs which are listed below.

#### New Resource
 Alerts

#### Bug fixes & Enhancements
- [#362](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/362) Added helper method to change request body for Server Profile for API600.
- [#354](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/354) Input data has be to be a part of body, but not the header for import certificate method in enclosure.
- [#356](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/356) Not able to add and remove scopes from a resource in a single API call.
- [#359](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/359) Interconnect link topologies endpoints not available for api600. Fixed by inheriting from API500.

## v5.5.0

#### Notes
Extended support to Image Streamer Rest API version 500((ImageStreamer v3.10)) and API version 600 (ImageStreamer v4.0).

#### Features supported
Extends support to OneView Rest API version 600 for the hardware variants C7000 and Synergy to the already existing features:
   - OS Deployment Plan

Extended support to Image Streamer Rest API version 500 and 600 to the already existing features:
   - Build Plan
   - Deployment Plan
   - Golden Image
   - OS Volume

## v5.4.0

#### Notes
Extends support of the SDK to OneView Rest API version 600 (OneView v4.0).

#### Features supported
This release adds support to OneView Rest API version 600 for the hardware variants C7000 and Synergy to the already existing features:
   - Connection Templates
   - Enclosure
   - Enclosure Group
   - Ethernet Network
   - FC Network
   - FCoE Network
   - Interconnect
   - Interconnect Type
   - Internal Link Set
   - Logical Enclosure
   - Logical Interconnect
   - Logical Interconnect Group
   - Logical Switch
   - Logical Switch Group
   - Managed SAN
   - Network Set
   - SAS Interconnect
   - SAS Interconnect Type
   - SAS Logical Interconnect
   - SAS Logical Interconnect Group
   - SAS Logical JBODs
   - SAS Logical JBOD attachment
   - Scope
   - Server Hardware
   - Server Hardware Types
   - Server Profile
   - Server Profile Template
   - Storage Pool
   - Switch
   - Switch Type
   - Storage System
   - Uplink Set
   - Volume
   - Volume Template

Extended support to Image Streamer Rest API version 500 and 600 to the already existing features:
   - Plan Script

## v5.3.0

#### New Resources:
- Login Detail
- Version

#### Bug fixes & Enhancements
- [#226](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/226) Add_rack_resource method returns NOMATCHING_ETAG_MESSAGE.
- [#294](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/294) Overridden methods without receiving header parameter.
- [#301](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/301) Bug - Race condition when requiring oneview-sdk gem on ruby 2.4

## v5.2.0

#### New Features:
- [#287](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/287) Missing method to apply/reapply configuration to Interconnect of API500
- [#290](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/290) Missing update ports method for Switch on API 300

## v5.1.2
#### Notes
This release adds the [endpoints-support.md](endpoints-support.md) file to the repository, in order to track implemented endpoints and what is in the scope of this SDK.

Also adds the [TESTING.md](TESTING.md) file to the repository, in order to guide the test execution and implementation for this SDK.

#### Bug fixes & Enhancements
- [#285](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/285) Add helper method to set a StorageSystem to a StoragePool of API500

## v5.1.1

#### Bug fixes & Enhancements
- [#279](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/279) Bug when setting the Storage Pool and Snapshot Pool when trying to make an update

## v5.1.0

#### Bug fixes & Enhancements
1. The method `self.add` in the Volumes API 500 was deprecated, use the `add` method instead.
  - [#275](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/275) Method 'add' in Volume API 500 expects different arguments from usual 'add' implementations

## v5.0.5

#### Bug fixes & Enhancements
- [#273](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/273) 'retrieve!' and 'exists?' methods return false for existing Volumes on API500

## v5.0.4

#### Bug fixes & Enhancements
- [#269](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/269) The StoragePool of API500 can't be retrieved using retrieve! method by name and storageSystemUri

## v5.0.3

#### Bug fixes & Enhancements
- [#266](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/266) cannot require oneview-sdk because the code is using non-require'd code #2

## v5.0.2

#### Bug fixes & Enhancements
- [#263](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/263) cannot require oneview-sdk because the code is using non-require'd code

## v5.0.1

#### Bug fixes & Enhancements
- [#127](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/127) Integration tests fail when running end-to-end
- [#258](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/258) Incorrect import into Server Profile

## v5.0.0

#### New Resources:
This release adds support to HPE OneView Rest API version 200 (for hardware variant C7000), 300 and 500 (both for the hardware variants C7000 and Synergy) to the new features:
   - Client Certificate
   - Web Server Certificate

#### Features supported
This release adds support to OneView Rest API version 500 for the hardware variants C7000 and Synergy to the already existing features:
   - Connection Template
   - Datacenter
   - Drive Enclosure
   - Enclosure
   - Enclosure Group
   - Ethernet Network
   - Event
   - Fabric
   - FC Network
   - FCoE Network
   - Firmware Bundle
   - Firmware Driver
   - ID Pool
   - Interconnect
   - Internal Link Set
   - Logical Downlink
   - Logical Enclosure
   - Logical Interconnect
   - Logical Interconnect Group
   - Logical Switch
   - Logical Switch Group
   - Managed SANs
   - Network Set
   - Power Device
   - OS Deployment Plan
   - Rack
   - SAN Manager
   - SAS Interconnect
   - SAS Logical Interconnect
   - SAS Logical Interconnect Group
   - Scopes
   - Server Hardware
   - Server Hardware Type
   - Server Profile Template
   - Storage Pool
   - Storage System
   - Switches
   - Unmanaged Devices
   - Uplink Set
   - User
   - Volume
   - Volume Attachment
   - Volume Templates

#### Breaking changes
1. In the Switch resource, the `statistics` method was fixed, a non-existent endpoint was removed `/rest/switches/statistics/{portName}/subport/{subportNumber}`. Now the method only get statistics of a switch or a specific port.

## v4.5.1

#### Bug fixes & Enhancements
- [#241](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/241) Wrong method name in Server Profile

## v4.5.0

#### New Resources:
   - Event
   - ID Pools

#### Bug fixes & Enhancements
- [#235](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/235) Example file for Synergy LIG fails with 'Interconnect type or Logical Downlink not found!'


## v4.4.0

#### Bug fixes & Enhancements
- [#216](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/216) Missing support for Q ports in API300::Synergy::LIGUplinkSet, missing support for multiple Synergy frames
- [#228](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/228) Method add_uplink for LIG Uplinks Set does not work with Q ports nor integer ports
- [#231](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/#231) Support id in ServerProfile#add_connection

## v4.3.0

#### New Features:
- Added SCMB module and CLI command

#### Bug fixes & Enhancements:
- [#222](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/222) Error listing the OS Deployment Plans from OneView

## v4.2.0

#### New Resources:
   - OS Deployment Plan

#### Bug fixes & Enhancements:
- [#89](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/89) Fix like? method for Logical Interconnect Groups
- [#119](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/112) VolumeAttachment::remove_extra_unmanaged_volume throw Unexpected Http Error
- [#125](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/125) References to resources C7000 in Synergy integration tests
- [#189](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/189) Use helper methods of Rest module for upload and download file
- [#201](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/201) Code to search the collection of resources (paginated search) is repeated in some resources
- [#202](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/202) The method #get_default_settings in LogicalInterconnectGroup is used on integration test
- [#212](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/212) Unable to create a Server Profile with Deployment Plan settings
- [#219](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/219) Fix like? method for Server Profile

#### Design changes:
   - Architecture for future API500 support. Features for API500 are not yet supported.

## v4.1.0

#### New Resources:
Added full support to Image Streamer Rest API version 300:
   - Artifact Bundle
   - Build Plan
   - Deployment Group
   - Deployment Plan
   - Golden Image
   - OS Volume
   - Plan Script

#### Bug fixes & Enhancements:
- Give custom exception classes a data attribute for more error context and default message
- [#116](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/112) VolumeAttachment::remove_extra_unmanaged_volume throw Unexpected Http Error
- [#135](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/135) Firmware Bundle timeout does not give proper instructions for user post failure
- [#146](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/146) Why is Switch the only resource that directly implements #set_scope_uris?
- [#166](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/166) I3S - Simplify login to i3s through oneview client
- [#178](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/178) Add client destroy_session method and domain attribute
- [#174](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/174) I3S - Integration test for Build Plan failing
- [#176](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/176) OneviewSDK.resource_named now finds resources that are not children of Resource
- [#183](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/183) Image Streamer Client cannot be created with the OneView environment variables
- [#184](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/184) Coveralls badge showing coverage as unknown
- [#196](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/196) Missing endpoint for extract backup in Artifact Bundle

# v4.0.0

#### Breaking changes:
- [#93](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/93) Fixed Logical Switch refresh conflict
- [#134](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/134) Remove API300::Synergy::LogicalSwitchGroup resource, which is not defined in the API

#### Bug fixes & Enhancements:
- [#131](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/131) Unavailable methods can take any number of arguments
- [#132](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/132) Made get_default_settings in API200 a class method instead of an instance method
- [#141](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/141) Fixes for API300::Synergy::LogicalInterconnectGroup
- [#142](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/142) EnclosureGroup should raise error in `#add_logical_interconnect_group` if LIG could not be retrieved
- [#145](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/145) REST methods now handle redirects
- [#147](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/147) [API300] Missing #patch in Logical Switch
- [#149](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/149) API300::EnclosureGroup resources support enclosureIndex in interconnectBayMappings
- [#152](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/152) Update client logger's log level with `client.log_level=`
- [#161](https://github.com/HewlettPackard/oneview-sdk-ruby/issues/161) Allow client attributes to be set after initialization, and token to be refreshed
- Client #get_all method now supports an (optional) variant parameter
- Support API modules & variants with the CLI

#### New Resources:
- Scope
- User
- Image Streamer API v300 Resources (experimental):
  - OS Volume
  - Plan Script
  - Artifacts Bundle (unimplemented)
  - Build Plan (unimplemented)
  - Deployment Plan (unimplemented)
  - Golden Image (unimplemented)

## v3.1.0
Added full support to OneView Rest API version 300 for the hardware variants C7000 and Synergy to the already existing features:
   - Interconnect
   - Logical Interconnect
   - Uplink Set
   - Volume attachment
   - Unmanaged devices

#### Bug fixes
- Fixed issue #124 Missing argument in API300 C7000 Managed SAN method.

#### Features supported
- Connection template
- Datacenter
- Enclosure
- Ethernet network
- Fabrics
- FC network
- FCoE network
- Firmware bundles
- Firmware drivers
- Interconnect
- Logical downlink
- Logical enclosure
- Logical interconnect
- Logical interconnect Group
- Uplink Set
- Logical switch
- Logical switch group
- Managed SANs
- Network set
- Power devices
- Racks
- SAN managers
- Server hardware
- Server hardware type
- Server profile
- Server profile template
- Storage pools
- Storage systems
- Switches
- Volume
- Volume attachment
- Volume template
- Drive Enclosures
- Interconnect Link Topology
- Internal Link Set
- SAS Interconnect
- SAS Interconnect Type
- SAS Logical Interconnect
- SAS Logical Interconnect Group
- SAS Logical JBOD Attachments
- SAS Logical JBODs
- Unmanaged devices

# v3.0.0
#### Notes
 This is the Third major version of the Ruby SDK for HPE OneView. It features a split in the API support, allowing for C7000 and Synergy hardware variants to be used, while maintaining compatibility to older versions. There are some code improvements applied throughout the release, as well as additional endpoints support.
 This version of this SDK officially supports OneView appliances version 3.00.00 or higher, using the OneView Rest API version 300.
 Support is provided for C7000 and Synergy enclosure types.

#### Major changes
 1. Added full support to OneView Rest API version 300 for the hardware variants C7000 and Synergy to the already existing features:
   - Connection template
   - Datacenter
   - Enclosure
   - Ethernet network
   - Fabrics
   - FC network
   - FCoE network
   - Firmware bundles
   - Firmware drivers
   - Logical downlink
   - Logical enclosure
   - Logical interconnect Group
   - Logical switch
   - Logical switch group
   - Managed SANs
   - Network set
   - Power devices
   - Racks
   - SAN managers
   - Server hardware
   - Server hardware type
   - Server profile
   - Server profile template
   - Storage pools
   - Storage systems
   - Switches
   - Volume
   - Volume template
 2. New features added:
   - Drive Enclosures
   - Interconnect Link Topology
   - Internal Link Set
   - SAS Interconnect
   - SAS Interconnect Type
   - SAS Logical Interconnect
   - SAS Logical Interconnect Group
   - SAS Logical JBOD Attachments
   - SAS Logical JBODs
 3. Design changes:
   - Split features into API modules for each hardware variant
   - Fixed/updated/added CLI commands

## v2.2.1
 - Fixed issue #88 (firmware bundle file size). Uses multipart-post now

## v2.2.0
 - Added the 'rest' and 'update' commands to the CLI
 - Removed the --force option from the create_from_file CLI command

## v2.1.0
 - Fixed issue with the :resource_named method for OneViewSDK::Resource in Ruby 2.3

# v2.0.0
#### Notes
 This is the second version of the Ruby SDK for HPE OneView. It was given support to the major features of OneView, refactor in some of the already existing code, and also a full set of exceptions to make some common exceptions more explicit in the debugging process.
 This version of this SDK officially supports OneView appliances version 2.00.00 or higher, using the OneView Rest API version 200.
 For now only C7000 enclosure types are being supported.

#### Major changes
 1. Added full support to the already existing features:
   - Server Profile
   - Server Profile Template
   - Server Hardware
 2. New features added:
   - Connection Templates
   - Datacenter
   - Fabrics
   - Logical downlinks
   - Logical switch groups
   - Logical switches
   - Switches
   - SAN managers
   - Managed SANs
   - Network sets
   - Power devices
   - Racks
   - Server hardware types
 3. New exceptions to address the most common issues (Check them in *lib/oneview-sdk/resource/exceptions.rb*)

#### Breaking changes
 1. Refactored some method names that may cause incompatibility with older SDK versions. Due to the nature of OneView, the `create` and `delete` methods did not fit the physical infrastructure elements like Enclosures, or Switches, so they now have `add` and `remove` methods that act the same as before, but now it leaves no margin to misunderstand that OneView could actually create these resources. They are:
   - Datacenters
   - Enclosure
   - Power devices
   - Racks
   - Storage systems
   - Storage pools
   - Firmware drivers
   - Firmware bundles (Only `add`)
   - SAN managers
   - Server hardwares
   - Server hardware types
   - Switches
   - Unmanaged devices

#### Features supported
- Ethernet network
- FC network
- FCOE network
- Network set
- Connection template
- Fabric
- SAN manager
- Managed SAN
- Interconnect
- Logical interconnect
- Logical interconnect group
- Uplink set
- Logical downlink
- Enclosure
- Logical enclosure
- Enclosure group
- Firmware bundle
- Firmware driver
- Storage system
- Storage pool
- Volume
- Volume template
- Datacenter
- Racks
- Logical switch group
- Logical switch
- Switch
- Power devices
- Server profile
- Server profile template
- Server hardware
- Server hardware type
- Unmanaged devices

# v1.0.0
#### Notes
 This is the first release of the OneView SDK in Ruby and it adds full support to some core features listed bellow, with some execeptions that are explicit.
 This version of this SDK supports OneView appliances version 2.00.00 or higher, using the OneView Rest API version 200.
 For now it only supports C7000 enclosure types.


#### Features supported
- Ethernet Network
- FC Network
- FCoE Network
- Interconnect
- Logical Interconnect
- Logical Interconnect Group
- Uplink Set
- Enclosure
- Logical Enclosure
- Enclosure Group
- Firmware Bundle
- Firmware Driver
- Storage System
- Storage Pool
- Volume
- Volume Template
- Server Profile (CRUD supported)
- Server Profile Template (CRUD supported)
- Server Hardware (CRUD Supported)

#### Known issues
The integration tests may warn about 3 issues:

1. OneviewSDK::LogicalInterconnect Firmware Updates perform the actions Stage
> The SDK cannot provide Firmware files for your OneView appliance. Please set a valid SPP in your appliance prior to running this test.

2. OneviewSDK::VolumeTemplate#retrieve! retrieves the resource
> OneView 2.00.00 appliances may return the old type of Volume Template resource. Run it against a newer version of OneView and it should not happen.

3. OneviewSDK::VolumeTemplate#update update volume name
> OneView 2.00.00 appliances may return the old type of Volume Template resource. Run it against a newer version of OneView and it should not happen.
