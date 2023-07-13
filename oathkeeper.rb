# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Oathkeeper < Formula
  desc "The Ory Identity and Access Proxy (Ory Oathkeeper)"
  homepage "https://www.ory.sh"
  version "0.40.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ory/oathkeeper/releases/download/v0.40.4/oathkeeper_0.40.4-macOS_sqlite_arm64.tar.gz"
      sha256 "12065114400cfe23d60b6aafd0bbea821a9fb55cc19b0e027e68d9937f6df1fa"

      def install
        bin.install "oathkeeper"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ory/oathkeeper/releases/download/v0.40.4/oathkeeper_0.40.4-macOS_sqlite_64bit.tar.gz"
      sha256 "caa0c176da6b548a1aeae79b13a6b7935ce74837ef203947b2d8cefb90ad8a0c"

      def install
        bin.install "oathkeeper"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ory/oathkeeper/releases/download/v0.40.4/oathkeeper_0.40.4-linux_sqlite_64bit.tar.gz"
      sha256 "a5c212976e45295dc90715cea8c6e8ee5227eec3bfb8dcfd26bcbd2b84c5f68d"

      def install
        bin.install "oathkeeper"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ory/oathkeeper/releases/download/v0.40.4/oathkeeper_0.40.4-linux_sqlite_armv6.tar.gz"
      sha256 "b655d27374984e2f0c15264da1c211f568f080b112afca4993514d2629e511e1"

      def install
        bin.install "oathkeeper"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ory/oathkeeper/releases/download/v0.40.4/oathkeeper_0.40.4-linux_sqlite_arm64.tar.gz"
      sha256 "151192240706aeb6e4322c7a735f7c6b74b302664b3df43d8ed81dd98c05c67b"

      def install
        bin.install "oathkeeper"
      end
    end
  end

  test do
    system "#{bin}/oathkeeper version"
  end
end
