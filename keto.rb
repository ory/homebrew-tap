# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Keto < Formula
  desc "The Ory Authorization Server (Ory Keto)"
  homepage "https://www.ory.sh"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ory/keto/releases/download/v0.14.0/keto_0.14.0-macOS_sqlite_64bit.tar.gz"
      sha256 "833ed48525d94b446f1ad98c1858ec3725c76a6be7cce55bdf12e76250dd7de4"

      def install
        bin.install "keto"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ory/keto/releases/download/v0.14.0/keto_0.14.0-macOS_sqlite_arm64.tar.gz"
      sha256 "b3d5fc9bec4e911fde6766d5fd885581392a0cee85414a8cfb8d176f800e56ed"

      def install
        bin.install "keto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ory/keto/releases/download/v0.14.0/keto_0.14.0-linux_sqlite_64bit.tar.gz"
        sha256 "1581e12754b211726ef229df4a6e44d8fbc9a0d9723256d7c64bbf8d1d847222"

        def install
          bin.install "keto"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/ory/keto/releases/download/v0.14.0/keto_0.14.0-linux_sqlite_armv6.tar.gz"
        sha256 "816d3d088ec020d8e64894d10a861f8887360b81b94ea665b0c6628a6d26a78b"

        def install
          bin.install "keto"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ory/keto/releases/download/v0.14.0/keto_0.14.0-linux_sqlite_arm64.tar.gz"
        sha256 "04fdeea5ef9f826004c170baa0ddc598283999883195b9f125ec7a8b0fd647f1"

        def install
          bin.install "keto"
        end
      end
    end
  end

  test do
    system "#{bin}/keto version"
  end
end
