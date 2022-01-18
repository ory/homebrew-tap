# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Use Ory from the your terminal!"
  homepage "https://www.ory.sh"
  version "0.1.16"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ory/cli/releases/download/v0.1.16/ory_0.1.16-macOS_sqlite_64bit.tar.gz"
      sha256 "27f9e7988aaf4a3129a63852a0d44d703ac9347468d94d0906ec2aeb0725b51d"

      def install
        bin.install "ory"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ory/cli/releases/download/v0.1.16/ory_0.1.16-macOS_sqlite_arm64.tar.gz"
      sha256 "093cfcd59a93dc358ce0fa01e4e0c6c89ceb888f67d195b7bd75338b6fe4345f"

      def install
        bin.install "ory"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ory/cli/releases/download/v0.1.16/ory_0.1.16-linux_sqlite_64bit.tar.gz"
      sha256 "122f60c87e990669d93eef1a7edb2baf66fb04a240d8777e8444a61595766331"

      def install
        bin.install "ory"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ory/cli/releases/download/v0.1.16/ory_0.1.16-linux_sqlite_arm64.tar.gz"
      sha256 "37f62cfe2c362121d38bc2003ecf58298e66d762c51726866d8b03db84171d02"

      def install
        bin.install "ory"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ory/cli/releases/download/v0.1.16/ory_0.1.16-linux_sqlite_armv6.tar.gz"
      sha256 "8aa69aea5f88680c1c916b2322abb1af402113470faa7dcead66e90b296dd7fb"

      def install
        bin.install "ory"
      end
    end
  end

  test do
    system "#{bin}/ory version"
  end
end
