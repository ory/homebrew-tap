# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Use Ory from the your terminal!"
  homepage "https://www.ory.sh"
  version "0.3.1-pre.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ory/cli/releases/download/v0.3.1-pre.0/ory_0.3.1-pre.0-macOS_sqlite_arm64.tar.gz"
      sha256 "6edc8c5660a9603d0a6efb3837688f8ce8ac6f02eb807414ae74c1c5f690030f"

      def install
        bin.install "ory"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ory/cli/releases/download/v0.3.1-pre.0/ory_0.3.1-pre.0-macOS_sqlite_64bit.tar.gz"
      sha256 "31daefa2ffccdca359d7ad59641804ae91e01fc92d16f4bfa998c7c06f729a76"

      def install
        bin.install "ory"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ory/cli/releases/download/v0.3.1-pre.0/ory_0.3.1-pre.0-linux_sqlite_armv6.tar.gz"
      sha256 "434a3ec13736278db481a811f9255220c004e1b723c09283fc6f3b9942e0bd7f"

      def install
        bin.install "ory"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ory/cli/releases/download/v0.3.1-pre.0/ory_0.3.1-pre.0-linux_sqlite_arm64.tar.gz"
      sha256 "02acf0de3d111f5b28f02835cdf67ac9070fc6f556483b4df4b589c311ca04a1"

      def install
        bin.install "ory"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ory/cli/releases/download/v0.3.1-pre.0/ory_0.3.1-pre.0-linux_sqlite_64bit.tar.gz"
      sha256 "ae357ce5ebe5fe11b8a8422d764718948588a41e7fd662f8e6fa7a33a511bffc"

      def install
        bin.install "ory"
      end
    end
  end

  test do
    system "#{bin}/ory version"
  end
end
