# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Use Ory from the your terminal!"
  homepage "https://www.ory.sh"
  version "1.0.0-alpha.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ory/cli/releases/download/v1.0.0-alpha.1/ory_1.0.0-alpha.1-macOS_sqlite_64bit.tar.gz"
      sha256 "d65d2fcda1b81515121c54791513a35c7e08f170bfa95d5569341c530478ebd6"

      def install
        bin.install "ory"
      end
    end
    on_arm do
      url "https://github.com/ory/cli/releases/download/v1.0.0-alpha.1/ory_1.0.0-alpha.1-macOS_sqlite_arm64.tar.gz"
      sha256 "f56394b8cfd85cc7fdb6fdf08643c61a45b784b3e8e48e700605cfc00fd801cb"

      def install
        bin.install "ory"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ory/cli/releases/download/v1.0.0-alpha.1/ory_1.0.0-alpha.1-linux_sqlite_64bit.tar.gz"
        sha256 "72a30070c9d87b17b5df3b404bfbde942248e2b247e2a261d98626b2421e0710"

        def install
          bin.install "ory"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/ory/cli/releases/download/v1.0.0-alpha.1/ory_1.0.0-alpha.1-linux_sqlite_armv6.tar.gz"
        sha256 "9859b13b2e4bc6d2a1ba2a7f32313d022aca7acbbe73541df55186bb24290066"

        def install
          bin.install "ory"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ory/cli/releases/download/v1.0.0-alpha.1/ory_1.0.0-alpha.1-linux_sqlite_arm64.tar.gz"
        sha256 "7a07aeb34031c0ead5fd9670bff1e7d74b6620f1e7d009e9c1ae5d299232aacb"

        def install
          bin.install "ory"
        end
      end
    end
  end

  test do
    system "#{bin}/ory version"
  end
end
