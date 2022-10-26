# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hydra < Formula
  desc "The Ory OAuth2 and OpenID Connect Platform (Ory Hydra)"
  homepage "https://www.ory.sh"
  version "2.0.0-alpha.0.pre.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ory/hydra/releases/download/v2.0.0-alpha.0.pre.2/hydra_2.0.0-alpha.0.pre.2-macOS_sqlite_arm64.tar.gz"
      sha256 "127b921427de0cba103188a31a68fcb59fc2583ea278dcc5252782637ff695c5"

      def install
        bin.install "hydra"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ory/hydra/releases/download/v2.0.0-alpha.0.pre.2/hydra_2.0.0-alpha.0.pre.2-macOS_sqlite_64bit.tar.gz"
      sha256 "3099d7d99a99e4cdb1559a42e89dc1d4df783bc9406d4c811f790c69e376edd2"

      def install
        bin.install "hydra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ory/hydra/releases/download/v2.0.0-alpha.0.pre.2/hydra_2.0.0-alpha.0.pre.2-linux_sqlite_64bit.tar.gz"
      sha256 "f28dc3a01628c95e8a2a28a9ced9f94e239ad136e03363e32fd430064fef7275"

      def install
        bin.install "hydra"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ory/hydra/releases/download/v2.0.0-alpha.0.pre.2/hydra_2.0.0-alpha.0.pre.2-linux_sqlite_armv6.tar.gz"
      sha256 "d00d7296af21a74954a7072a2828624084f0e86c8e77672567b7a86b129aa371"

      def install
        bin.install "hydra"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ory/hydra/releases/download/v2.0.0-alpha.0.pre.2/hydra_2.0.0-alpha.0.pre.2-linux_sqlite_arm64.tar.gz"
      sha256 "c8c21570146c7e0d2460af3f60860b935823b4d8a9cd482969cf16144fd52b4d"

      def install
        bin.install "hydra"
      end
    end
  end

  test do
    system "#{bin}/hydra version"
  end
end
