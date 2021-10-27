# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Interface with Ory using this CLI!"
  homepage "https://www.ory.sh"
  version "0.0.74"
  license "Apache-2.0"
  bottle :unneeded
  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ory/cli/releases/download/v0.0.74/ory_0.0.74_macOS_64-bit.tar.gz"
      sha256 "85667ee22458d70213cb851a8718f0daf557956a3c7ca381168d28160708cf0e"
    end
  end

  def install
    bin.install "ory"
  end

  test do
    system "#{bin}/ory version"
  end
end
