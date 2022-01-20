# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hydra < Formula
  desc "The Ory OAuth2 and OpenID Connect Platform (Ory Hydra)"
  homepage "https://www.ory.sh"
  version "1.11.0-pre.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ory/hydra/releases/download/v1.11.0-pre.0/hydra_1.11.0-pre.0-macOS_sqlite_64bit.tar.gz"
      sha256 "fc0e35baa6917a394d866b48d717b5b1a64a4a8f7940ba0033536d2001ec0165"

      def install
        bin.install "hydra"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ory/hydra/releases/download/v1.11.0-pre.0/hydra_1.11.0-pre.0-macOS_sqlite_arm64.tar.gz"
      sha256 "5374f40363b2d607ed638fc90f5e757dab2a091e3afd026c56bcda69a9c6d387"

      def install
        bin.install "hydra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ory/hydra/releases/download/v1.11.0-pre.0/hydra_1.11.0-pre.0-linux_sqlite_arm64.tar.gz"
      sha256 "0567ca26313088bcb29b96419afb4ad5dc550cfed876572147cf2638d472d0f4"

      def install
        bin.install "hydra"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ory/hydra/releases/download/v1.11.0-pre.0/hydra_1.11.0-pre.0-linux_sqlite_armv6.tar.gz"
      sha256 "2f537838e068e08597c98af61cf6f7bf9dae20d1d0e0346c9b5fc8d63cddc5f7"

      def install
        bin.install "hydra"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ory/hydra/releases/download/v1.11.0-pre.0/hydra_1.11.0-pre.0-linux_sqlite_64bit.tar.gz"
      sha256 "9187941ee61f7cf0e666f102689f56e30846aa3eadfc1f14e4298f59b3a9e5c1"

      def install
        bin.install "hydra"
      end
    end
  end

  test do
    system "#{bin}/hydra version"
  end
end
