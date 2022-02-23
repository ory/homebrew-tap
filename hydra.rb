# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hydra < Formula
  desc "The Ory OAuth2 and OpenID Connect Platform (Ory Hydra)"
  homepage "https://www.ory.sh"
  version "1.11.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ory/hydra/releases/download/v1.11.7/hydra_1.11.7-macOS_sqlite_64bit.tar.gz"
      sha256 "c8d359b4c6823d287807c8dba702673824e2585d089cbb0d1ad93aec3b2e8032"

      def install
        bin.install "hydra"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ory/hydra/releases/download/v1.11.7/hydra_1.11.7-macOS_sqlite_arm64.tar.gz"
      sha256 "338d32527fc22dce75f095a2713ac57341bed07afba113fa09ce9a11f2f279f9"

      def install
        bin.install "hydra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ory/hydra/releases/download/v1.11.7/hydra_1.11.7-linux_sqlite_arm64.tar.gz"
      sha256 "2c25c6d79611a01df82a98818e84610943e3331657c2b069d3f978707a111e55"

      def install
        bin.install "hydra"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ory/hydra/releases/download/v1.11.7/hydra_1.11.7-linux_sqlite_armv6.tar.gz"
      sha256 "eeb860cb243c818ad9b6fbda0a08d8af079041f40c0401a0d0e2c47854fbc632"

      def install
        bin.install "hydra"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ory/hydra/releases/download/v1.11.7/hydra_1.11.7-linux_sqlite_64bit.tar.gz"
      sha256 "d42fdc3c5b82583200c98d511eeeb76fed2fa539638477a5ecb8a84edfaa6d11"

      def install
        bin.install "hydra"
      end
    end
  end

  test do
    system "#{bin}/hydra version"
  end
end
