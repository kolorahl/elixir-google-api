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

defmodule GoogleApi.YouTube.V3.Model.VideoFileDetailsVideoStream do
  @moduledoc """
  Information about a video stream.

  ## Attributes

  *   `aspectRatio` (*type:* `float()`, *default:* `nil`) - The video content's display aspect ratio, which specifies the aspect
      ratio in which the video should be displayed.
  *   `bitrateBps` (*type:* `String.t`, *default:* `nil`) - The video stream's bitrate, in bits per second.
  *   `codec` (*type:* `String.t`, *default:* `nil`) - The video codec that the stream uses.
  *   `frameRateFps` (*type:* `float()`, *default:* `nil`) - The video stream's frame rate, in frames per second.
  *   `heightPixels` (*type:* `integer()`, *default:* `nil`) - The encoded video content's height in pixels.
  *   `rotation` (*type:* `String.t`, *default:* `nil`) - The amount that YouTube needs to rotate the original source content
      to properly display the video.
  *   `vendor` (*type:* `String.t`, *default:* `nil`) - A value that uniquely identifies a video vendor. Typically, the value is
      a four-letter vendor code.
  *   `widthPixels` (*type:* `integer()`, *default:* `nil`) - The encoded video content's width in pixels. You can calculate the
      video's encoding aspect ratio as
      <code>width_pixels</code>&nbsp;/&nbsp;<code>height_pixels</code>.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aspectRatio => float(),
          :bitrateBps => String.t(),
          :codec => String.t(),
          :frameRateFps => float(),
          :heightPixels => integer(),
          :rotation => String.t(),
          :vendor => String.t(),
          :widthPixels => integer()
        }

  field(:aspectRatio)
  field(:bitrateBps)
  field(:codec)
  field(:frameRateFps)
  field(:heightPixels)
  field(:rotation)
  field(:vendor)
  field(:widthPixels)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoFileDetailsVideoStream do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.VideoFileDetailsVideoStream.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.VideoFileDetailsVideoStream do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
