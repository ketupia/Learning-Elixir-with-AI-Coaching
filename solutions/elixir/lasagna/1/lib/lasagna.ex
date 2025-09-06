defmodule Lasagna do
  @moduledoc """
  A module to help calculate cooking times and provide notifications for making lasagna.

  ## Functions

  - `expected_minutes_in_oven/0`: Returns the expected oven time in minutes.
  - `remaining_minutes_in_oven/1`: Calculates the remaining oven time based on the actual time spent.
  - `preparation_time_in_minutes/1`: Calculates the preparation time based on the number of layers.
  - `total_time_in_minutes/2`: Calculates the total time spent on the lasagna.
  - `alarm/0`: Returns a notification message when the lasagna is ready.
  """

  @doc """
  Returns the expected oven time in minutes.

  ## Examples

      iex> Lasagna.expected_minutes_in_oven()
      40
  """
  def expected_minutes_in_oven, do: 40

  @doc """
  Calculates the remaining oven time in minutes.

  ## Parameters

  - `actual_minutes`: The number of minutes the lasagna has already been in the oven.

  ## Examples

      iex> Lasagna.remaining_minutes_in_oven(25)
      15
  """
  def remaining_minutes_in_oven(actual_minutes) do
    expected_minutes_in_oven() - actual_minutes
  end

  @doc """
  Calculates the preparation time in minutes based on the number of layers.

  ## Parameters

  - `layers`: The number of layers in the lasagna.

  ## Examples

      iex> Lasagna.preparation_time_in_minutes(3)
      6
  """
  def preparation_time_in_minutes(layers), do: layers * 2

  @doc """
  Calculates the total time spent on the lasagna.

  ## Parameters

  - `layers`: The number of layers in the lasagna.
  - `actual_minutes`: The number of minutes the lasagna has already been in the oven.

  ## Examples

      iex> Lasagna.total_time_in_minutes(3, 20)
      26
  """
  def total_time_in_minutes(layers, actual_minutes) do
    preparation_time_in_minutes(layers) + actual_minutes
  end

  @doc """
  Returns a notification message indicating the lasagna is ready.

  ## Examples

      iex> Lasagna.alarm()
      "Ding!"
  """
  def alarm, do: "Ding!"
end
