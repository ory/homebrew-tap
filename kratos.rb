# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kratos < Formula
  desc ""
  homepage "https://www.ory.sh"
  version "0.8.0-alpha.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ory/kratos/releases/download/v0.8.0-alpha.1/kratos_0.8.0-alpha.1-sqlite_macos_arm64.tar.gz"
      sha256 "240010faf14174c35517e7d92652d7ed1686632f0f0f6cb9094c9b677752d45a"

      def install
        bin.install "kratos"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ory/kratos/releases/download/v0.8.0-alpha.1/kratos_0.8.0-alpha.1-sqlite_macos_64bit.tar.gz"
      sha256 "d93393306a402a67d24357f95b637cdc21b9df560e071f03a22d1bcbac91170a"

      def install
        bin.install "kratos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ory/kratos/releases/download/v0.8.0-alpha.1/kratos_0.8.0-alpha.1-sqlite_linux_64bit.tar.gz"
      sha256 "617f570f41ab183340daa4468cc558e388b6d3c714f7491b88c63972d15d920d"

      def install
        bin.install "kratos"
      end
    end
  end
end
