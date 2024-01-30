# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Use Ory from the your terminal!"
  homepage "https://www.ory.sh"
  version "0.3.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ory/cli/releases/download/v0.3.2/ory_0.3.2-macOS_sqlite_arm64.tar.gz"
      sha256 "d5e5cba78ef4b80922c7f5f4d09611497764e2228badb1a674c9d97bdf570d71"

      def install
        bin.install "ory"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ory/cli/releases/download/v0.3.2/ory_0.3.2-macOS_sqlite_64bit.tar.gz"
      sha256 "c7a701a73288069ddee7e3af152203dccd65e615030273ede296d45b4b7c7231"

      def install
        bin.install "ory"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ory/cli/releases/download/v0.3.2/ory_0.3.2-linux_sqlite_armv6.tar.gz"
      sha256 "859f5f065b0f100827d4ea2f7032a52087ced816a76b9632024aa62ef76be0ac"

      def install
        bin.install "ory"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ory/cli/releases/download/v0.3.2/ory_0.3.2-linux_sqlite_arm64.tar.gz"
      sha256 "09623f22d8b688cfa00add8118d4fd5273ff7a6aa321121c91a6ba12ca9423e1"

      def install
        bin.install "ory"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ory/cli/releases/download/v0.3.2/ory_0.3.2-linux_sqlite_64bit.tar.gz"
      sha256 "4f786982663869300e464a1a76d39f067da0a543f2ac78f5d22eba1c1dc0c46f"

      def install
        bin.install "ory"
      end
    end
  end

  test do
    system "#{bin}/ory version"
  end
end
