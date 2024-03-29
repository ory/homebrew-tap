# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kratos < Formula
  desc "The Ory Identity Platform (Ory Kratos)"
  homepage "https://www.ory.sh"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ory/kratos/releases/download/v1.1.0/kratos_1.1.0-macOS_sqlite_arm64.tar.gz"
      sha256 "6681d7b15dd04686d10764750ce3ad69672b3962553223399a3a315ba5370517"

      def install
        bin.install "kratos"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ory/kratos/releases/download/v1.1.0/kratos_1.1.0-macOS_sqlite_64bit.tar.gz"
      sha256 "ebdc94f27cb6e6a3087ed756accfb7837465ac8e30af9433b4414101814f7769"

      def install
        bin.install "kratos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ory/kratos/releases/download/v1.1.0/kratos_1.1.0-linux_sqlite_armv6.tar.gz"
      sha256 "559e22dffe0eab2f8aec2a75f7b900223b7a5e332c990e68264d7609ecf624af"

      def install
        bin.install "kratos"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ory/kratos/releases/download/v1.1.0/kratos_1.1.0-linux_sqlite_64bit.tar.gz"
      sha256 "6fb3077252dde7578c3100d2cd4eb52364ca6b3c1b0b76987e6d586e29008cbd"

      def install
        bin.install "kratos"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ory/kratos/releases/download/v1.1.0/kratos_1.1.0-linux_sqlite_arm64.tar.gz"
      sha256 "fde8a1a1aebd153baff88b1232e0c2a34fdaaafe90b5364f4ea580151e74898e"

      def install
        bin.install "kratos"
      end
    end
  end

  test do
    system "#{bin}/kratos version"
  end
end
