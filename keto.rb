# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Keto < Formula
  desc "The Ory Authorization Server (Ory Keto)"
  homepage "https://www.ory.sh"
  version "0.9.0-alpha.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ory/keto/releases/download/v0.9.0-alpha.0/keto_0.9.0-alpha.0-macOS_sqlite_arm64.tar.gz"
      sha256 "6d9c2a87cdf682786c4a32528cae034018f6c5ce9616ddcce66f2c7bdc7a66ca"

      def install
        bin.install "keto"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ory/keto/releases/download/v0.9.0-alpha.0/keto_0.9.0-alpha.0-macOS_sqlite_64bit.tar.gz"
      sha256 "2ec5ff2a241c72f7fdc672c7c2e7c4c3645dcc9c6984b87a6840389c6355ea81"

      def install
        bin.install "keto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ory/keto/releases/download/v0.9.0-alpha.0/keto_0.9.0-alpha.0-linux_sqlite_64bit.tar.gz"
      sha256 "8b61d567b803145dcec3bfc96877bcde599180e0abcac9d790fc14e2f40f9561"

      def install
        bin.install "keto"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ory/keto/releases/download/v0.9.0-alpha.0/keto_0.9.0-alpha.0-linux_sqlite_armv6.tar.gz"
      sha256 "21855b289c9c960629d876a66f064bcaa4d2523b86392bb18c18d740beb1ce6a"

      def install
        bin.install "keto"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ory/keto/releases/download/v0.9.0-alpha.0/keto_0.9.0-alpha.0-linux_sqlite_arm64.tar.gz"
      sha256 "48aac266584e8cb8e4594ad31456e410e2b12f113918b4629b6e71e18621ea7f"

      def install
        bin.install "keto"
      end
    end
  end

  test do
    system "#{bin}/keto version"
  end
end
