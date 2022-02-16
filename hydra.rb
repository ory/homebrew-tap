# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hydra < Formula
  desc "The Ory OAuth2 and OpenID Connect Platform (Ory Hydra)"
  homepage "https://www.ory.sh"
  version "1.11.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ory/hydra/releases/download/v1.11.4/hydra_1.11.4-macOS_sqlite_arm64.tar.gz"
      sha256 "94d3fcef7d8abf812c654f3ce4c0a96af4ba4093f5aeb3ee56fa3e7b1f46f3b1"

      def install
        bin.install "hydra"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ory/hydra/releases/download/v1.11.4/hydra_1.11.4-macOS_sqlite_64bit.tar.gz"
      sha256 "302c0780dafbb4ba9374cd919d5cccaf30c6a31395431b98fbdb1aa24a9f429c"

      def install
        bin.install "hydra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ory/hydra/releases/download/v1.11.4/hydra_1.11.4-linux_sqlite_64bit.tar.gz"
      sha256 "2b3fe652cf4a355e4b2ee28add197216ec4e11bd93eb5ccbab04d34667061062"

      def install
        bin.install "hydra"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ory/hydra/releases/download/v1.11.4/hydra_1.11.4-linux_sqlite_arm64.tar.gz"
      sha256 "db9768662d0e9fc15674cd20d7c97801d679222b5435106dfc2e7e86015359f5"

      def install
        bin.install "hydra"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ory/hydra/releases/download/v1.11.4/hydra_1.11.4-linux_sqlite_armv6.tar.gz"
      sha256 "6cacfb5a71db7c4bb76e05d9770e1594113834bacffc0ef146870b5717fefb85"

      def install
        bin.install "hydra"
      end
    end
  end

  test do
    system "#{bin}/hydra version"
  end
end
