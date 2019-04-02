# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Composer.V1beta1.Model.IpAllocationPolicy do
  @moduledoc """
  Configuration for controlling how IPs are allocated in the GKE cluster.

  ## Attributes

  - clusterIpv4CidrBlock (String.t): Optional. The IP address range used to allocate IP addresses to pods in the cluster.  This field is applicable only when &#x60;use_ip_aliases&#x60; is true.  Set to blank to have GKE choose a range with the default size.  Set to /netmask (e.g. &#x60;/14&#x60;) to have GKE choose a range with a specific netmask.  Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. &#x60;10.96.0.0/14&#x60;) from the RFC-1918 private networks (e.g. &#x60;10.0.0.0/8&#x60;, &#x60;172.16.0.0/12&#x60;, &#x60;192.168.0.0/16&#x60;) to pick a specific range to use. Specify &#x60;cluster_secondary_range_name&#x60; or &#x60;cluster_ipv4_cidr_block&#x60; but not both. Defaults to: `null`.
  - clusterSecondaryRangeName (String.t): Optional. The name of the cluster&#39;s secondary range used to allocate IP addresses to pods. Specify either &#x60;cluster_secondary_range_name&#x60; or &#x60;cluster_ipv4_cidr_block&#x60; but not both.  This field is applicable only when &#x60;use_ip_aliases&#x60; is true. Defaults to: `null`.
  - servicesIpv4CidrBlock (String.t): Optional. The IP address range of the services IP addresses in this cluster.  This field is applicable only when &#x60;use_ip_aliases&#x60; is true.  Set to blank to have GKE choose a range with the default size.  Set to /netmask (e.g. &#x60;/14&#x60;) to have GKE choose a range with a specific netmask.  Set to a [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing) notation (e.g. &#x60;10.96.0.0/14&#x60;) from the RFC-1918 private networks (e.g. &#x60;10.0.0.0/8&#x60;, &#x60;172.16.0.0/12&#x60;, &#x60;192.168.0.0/16&#x60;) to pick a specific range to use. Specify &#x60;services_secondary_range_name&#x60; or &#x60;services_ipv4_cidr_block&#x60; but not both. Defaults to: `null`.
  - servicesSecondaryRangeName (String.t): Optional. The name of the services&#39; secondary range used to allocate IP addresses to the cluster. Specify either &#x60;services_secondary_range_name&#x60; or &#x60;services_ipv4_cidr_block&#x60; but not both.  This field is applicable only when &#x60;use_ip_aliases&#x60; is true. Defaults to: `null`.
  - useIpAliases (boolean()): Optional. Whether or not to enable Alias IPs in the GKE cluster. If &#x60;true&#x60;, a VPC-native cluster is created. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterIpv4CidrBlock => any(),
          :clusterSecondaryRangeName => any(),
          :servicesIpv4CidrBlock => any(),
          :servicesSecondaryRangeName => any(),
          :useIpAliases => any()
        }

  field(:clusterIpv4CidrBlock)
  field(:clusterSecondaryRangeName)
  field(:servicesIpv4CidrBlock)
  field(:servicesSecondaryRangeName)
  field(:useIpAliases)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1beta1.Model.IpAllocationPolicy do
  def decode(value, options) do
    GoogleApi.Composer.V1beta1.Model.IpAllocationPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1beta1.Model.IpAllocationPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end