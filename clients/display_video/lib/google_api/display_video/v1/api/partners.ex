# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.DisplayVideo.V1.Api.Partners do
  @moduledoc """
  API calls for all endpoints tagged `Partners`.
  """

  alias GoogleApi.DisplayVideo.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Updates an existing inventory source.
  Returns the updated inventory source if successful.
  Gets a channel for a partner or advertiser.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DisplayVideo.V1.Connection.t`) - Connection to server
  *   `partner_id` (*type:* `String.t`) - The ID of the partner that owns the fetched channel.
  *   `channel_id` (*type:* `String.t`) - Required. The ID of the channel to fetch.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:advertiserId` (*type:* `String.t`) - The ID of the advertiser that owns the fetched channel.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DisplayVideo.V1.Model.Channel{}}` on success
  *   `{:error, info}` on failure
  """
  @spec displayvideo_partners_channels_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DisplayVideo.V1.Model.Channel.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def displayvideo_partners_channels_get(
        connection,
        partner_id,
        channel_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :advertiserId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/partners/{+partnerId}/channels/{+channelId}", %{
        "partnerId" => URI.encode(partner_id, &URI.char_unreserved?/1),
        "channelId" => URI.encode(channel_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DisplayVideo.V1.Model.Channel{}])
  end

  @doc """
  Lists channels for a partner or advertiser.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DisplayVideo.V1.Connection.t`) - Connection to server
  *   `partner_id` (*type:* `String.t`) - The ID of the partner that owns the channels.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:advertiserId` (*type:* `String.t`) - The ID of the advertiser that owns the channels.
      *   `:filter` (*type:* `String.t`) - Allows filtering by channel fields.

          Supported syntax:

          * Filter expressions for channel currently can only contain at most one
          * restriction.
          * A restriction has the form of `{field} {operator} {value}`.
          * The operator must be `CONTAINS (:)`.
          * Supported fields:
              - `displayName`

          Examples:

          * All channels for which the display name contains "google":
          `displayName : "google"`.

          The length of this field should be no more than 500 characters.
      *   `:orderBy` (*type:* `String.t`) - Field by which to sort the list.
          Acceptable values are:

          * `displayName` (default)
          * `channelId`

          The default sorting order is ascending. To specify descending order for a
          field, a suffix " desc" should be added to the field name. Example:
          `displayName desc`.
      *   `:pageSize` (*type:* `integer()`) - Requested page size. Must be between `1` and `100`. If unspecified will
          default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value
          is specified.
      *   `:pageToken` (*type:* `String.t`) - A token identifying a page of results the server should return.
          Typically, this is the value of
          next_page_token returned from the
          previous call to `ListChannels` method. If not specified, the first page
          of results will be returned.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DisplayVideo.V1.Model.ListChannelsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec displayvideo_partners_channels_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DisplayVideo.V1.Model.ListChannelsResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def displayvideo_partners_channels_list(
        connection,
        partner_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :advertiserId => :query,
      :filter => :query,
      :orderBy => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/partners/{+partnerId}/channels", %{
        "partnerId" => URI.encode(partner_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DisplayVideo.V1.Model.ListChannelsResponse{}])
  end

  @doc """
  Updates a channel. Returns the updated channel if successful.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DisplayVideo.V1.Connection.t`) - Connection to server
  *   `partner_id` (*type:* `String.t`) - The ID of the partner that owns the created channel.
  *   `channel_id` (*type:* `String.t`) - Output only. The unique ID of the channel. Assigned by the system.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:advertiserId` (*type:* `String.t`) - The ID of the advertiser that owns the created channel.
      *   `:updateMask` (*type:* `String.t`) - Required. The mask to control which fields to update.
      *   `:body` (*type:* `GoogleApi.DisplayVideo.V1.Model.Channel.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DisplayVideo.V1.Model.Channel{}}` on success
  *   `{:error, info}` on failure
  """
  @spec displayvideo_partners_channels_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DisplayVideo.V1.Model.Channel.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def displayvideo_partners_channels_patch(
        connection,
        partner_id,
        channel_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :advertiserId => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1/partners/{+partnerId}/channels/{channelId}", %{
        "partnerId" => URI.encode(partner_id, &URI.char_unreserved?/1),
        "channelId" => URI.encode(channel_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DisplayVideo.V1.Model.Channel{}])
  end

  @doc """
  Bulk edits sites under a single channel.

  The operation will delete the sites provided in
  BulkEditSitesRequest.deleted_sites and then create the sites
  provided in BulkEditSitesRequest.created_sites.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DisplayVideo.V1.Connection.t`) - Connection to server
  *   `partner_id` (*type:* `String.t`) - The ID of the partner that owns the parent channel.
  *   `channel_id` (*type:* `String.t`) - Required. The ID of the parent channel to which the sites belong.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.DisplayVideo.V1.Model.BulkEditSitesRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DisplayVideo.V1.Model.BulkEditSitesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec displayvideo_partners_channels_sites_bulk_edit(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DisplayVideo.V1.Model.BulkEditSitesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def displayvideo_partners_channels_sites_bulk_edit(
        connection,
        partner_id,
        channel_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/partners/{partnerId}/channels/{+channelId}/sites:bulkEdit", %{
        "partnerId" => URI.encode(partner_id, &URI.char_unreserved?/1),
        "channelId" => URI.encode(channel_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DisplayVideo.V1.Model.BulkEditSitesResponse{}])
  end

  @doc """
  Creates a site in a channel.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DisplayVideo.V1.Connection.t`) - Connection to server
  *   `partner_id` (*type:* `String.t`) - The ID of the partner that owns the parent channel.
  *   `channel_id` (*type:* `String.t`) - Required. The ID of the parent channel in which the site will be created.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:advertiserId` (*type:* `String.t`) - The ID of the advertiser that owns the parent channel.
      *   `:body` (*type:* `GoogleApi.DisplayVideo.V1.Model.Site.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DisplayVideo.V1.Model.Site{}}` on success
  *   `{:error, info}` on failure
  """
  @spec displayvideo_partners_channels_sites_create(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DisplayVideo.V1.Model.Site.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def displayvideo_partners_channels_sites_create(
        connection,
        partner_id,
        channel_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :advertiserId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/partners/{partnerId}/channels/{+channelId}/sites", %{
        "partnerId" => URI.encode(partner_id, &URI.char_unreserved?/1),
        "channelId" => URI.encode(channel_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DisplayVideo.V1.Model.Site{}])
  end

  @doc """
  Deletes a site from a channel.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DisplayVideo.V1.Connection.t`) - Connection to server
  *   `partner_id` (*type:* `String.t`) - The ID of the partner that owns the parent channel.
  *   `channel_id` (*type:* `String.t`) - Required. The ID of the parent channel to which the site belongs.
  *   `url_or_app_id` (*type:* `String.t`) - Required. The URL or app ID of the site to delete.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:advertiserId` (*type:* `String.t`) - The ID of the advertiser that owns the parent channel.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DisplayVideo.V1.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec displayvideo_partners_channels_sites_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DisplayVideo.V1.Model.Empty.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def displayvideo_partners_channels_sites_delete(
        connection,
        partner_id,
        channel_id,
        url_or_app_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :advertiserId => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/partners/{partnerId}/channels/{+channelId}/sites/{+urlOrAppId}", %{
        "partnerId" => URI.encode(partner_id, &URI.char_unreserved?/1),
        "channelId" => URI.encode(channel_id, &URI.char_unreserved?/1),
        "urlOrAppId" => URI.encode(url_or_app_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DisplayVideo.V1.Model.Empty{}])
  end

  @doc """
  Lists sites in a channel.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DisplayVideo.V1.Connection.t`) - Connection to server
  *   `partner_id` (*type:* `String.t`) - The ID of the partner that owns the parent channel.
  *   `channel_id` (*type:* `String.t`) - Required. The ID of the parent channel to which the requested sites belong.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:advertiserId` (*type:* `String.t`) - The ID of the advertiser that owns the parent channel.
      *   `:filter` (*type:* `String.t`) - Allows filtering by site fields.

          Supported syntax:

          * Filter expressions for site currently can only contain at most one
          * restriction.
          * A restriction has the form of `{field} {operator} {value}`.
          * The operator must be `CONTAINS (:)`.
          * Supported fields:
              - `urlOrAppId`

          Examples:

          * All sites for which the URL or app ID contains "google":
          `urlOrAppId : "google"`
      *   `:orderBy` (*type:* `String.t`) - Field by which to sort the list.
          Acceptable values are:

          * `urlOrAppId` (default)

          The default sorting order is ascending. To specify descending order for a
          field, a suffix " desc" should be added to the field name. Example:
          `urlOrAppId desc`.
      *   `:pageSize` (*type:* `integer()`) - Requested page size. Must be between `1` and `100`. If unspecified will
          default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value
          is specified.
      *   `:pageToken` (*type:* `String.t`) - A token identifying a page of results the server should return.

          Typically, this is the value of
          next_page_token returned from the
          previous call to `ListSites` method. If not specified, the first page
          of results will be returned.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DisplayVideo.V1.Model.ListSitesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec displayvideo_partners_channels_sites_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DisplayVideo.V1.Model.ListSitesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def displayvideo_partners_channels_sites_list(
        connection,
        partner_id,
        channel_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :advertiserId => :query,
      :filter => :query,
      :orderBy => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/partners/{+partnerId}/channels/{+channelId}/sites", %{
        "partnerId" => URI.encode(partner_id, &URI.char_unreserved?/1),
        "channelId" => URI.encode(channel_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DisplayVideo.V1.Model.ListSitesResponse{}])
  end
end