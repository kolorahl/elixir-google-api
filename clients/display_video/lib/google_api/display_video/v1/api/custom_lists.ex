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

defmodule GoogleApi.DisplayVideo.V1.Api.CustomLists do
  @moduledoc """
  API calls for all endpoints tagged `CustomLists`.
  """

  alias GoogleApi.DisplayVideo.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Gets a custom list.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DisplayVideo.V1.Connection.t`) - Connection to server
  *   `custom_list_id` (*type:* `String.t`) - Required. The ID of the custom list to fetch.
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
      *   `:advertiserId` (*type:* `String.t`) - The ID of the DV360 advertiser that has access to the fetched custom
          lists.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DisplayVideo.V1.Model.CustomList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec displayvideo_custom_lists_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DisplayVideo.V1.Model.CustomList.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def displayvideo_custom_lists_get(connection, custom_list_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/v1/customLists/{+customListId}", %{
        "customListId" => URI.encode(custom_list_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DisplayVideo.V1.Model.CustomList{}])
  end

  @doc """
  Lists custom lists.

  The order is defined by the order_by
  parameter.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DisplayVideo.V1.Connection.t`) - Connection to server
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
      *   `:advertiserId` (*type:* `String.t`) - The ID of the DV360 advertiser that has access to the fetched custom
          lists.
      *   `:filter` (*type:* `String.t`) - Allows filtering by custom list fields.

          Supported syntax:

          * Filter expressions for custom lists currently can only contain at
          most one restriction.
          * A restriction has the form of `{field} {operator} {value}`.
          * The operator must be `CONTAINS (:)`.
          * Supported fields:
              - `displayName`

          Examples:

          * All custom lists for which the display name contains "Google":
          `displayName : "Google"`.

          The length of this field should be no more than 500 characters.
      *   `:orderBy` (*type:* `String.t`) - Field by which to sort the list.
          Acceptable values are:

          * `customListId` (default)
          * `displayName`

          The default sorting order is ascending. To specify descending order for
          a field, a suffix "desc" should be added to the field name. Example:
          `displayName desc`.
      *   `:pageSize` (*type:* `integer()`) - Requested page size. Must be between `1` and `100`. If unspecified will
          default to `100`. Returns error code `INVALID_ARGUMENT` if an invalid value
          is specified.
      *   `:pageToken` (*type:* `String.t`) - A token identifying a page of results the server should return.
          Typically, this is the value of
          next_page_token
          returned from the previous call to `ListCustomLists` method.
          If not specified, the first page of results will be returned.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DisplayVideo.V1.Model.ListCustomListsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec displayvideo_custom_lists_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.DisplayVideo.V1.Model.ListCustomListsResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def displayvideo_custom_lists_list(connection, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/v1/customLists", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.DisplayVideo.V1.Model.ListCustomListsResponse{}]
    )
  end
end