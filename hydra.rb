# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hydra < Formula
  desc "The Ory OAuth2 and OpenID Connect Platform (Ory Hydra)"
  homepage "https://www.ory.sh"
  version "2.2.0-rc.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ory/hydra/releases/download/v2.2.0-rc.3/hydra_2.2.0-rc.3-macOS_sqlite_64bit.tar.gz"
      sha256 "36da43726411bd95ceeda5d1b5ae167b6e7f2aa17d3d69dc2d4cd8a89d8187ae"

      def install
        bin.install "hydra"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ory/hydra/releases/download/v2.2.0-rc.3/hydra_2.2.0-rc.3-macOS_sqlite_arm64.tar.gz"
      sha256 "cd4faedeea73056536d7988b0a5548bc17402279962cb715c6c92e1919fbf716"

      def install
        bin.install "hydra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ory/hydra/releases/download/v2.2.0-rc.3/hydra_2.2.0-rc.3-linux_sqlite_arm64.tar.gz"
      sha256 "ac48bd050ea5151ca3b644a2e0f00ea625e76480e282b46023d8a7c4d0884f30"

      def install
        bin.install "hydra"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ory/hydra/releases/download/v2.2.0-rc.3/hydra_2.2.0-rc.3-linux_sqlite_armv6.tar.gz"
      sha256 "cc804ce1256bdea360afa28a22edc462613d804ea6431a1364df43f6ce4d84be"

      def install
        bin.install "hydra"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ory/hydra/releases/download/v2.2.0-rc.3/hydra_2.2.0-rc.3-linux_sqlite_64bit.tar.gz"
      sha256 "cfa898495e90eb382e62c922efd026d0a52bacc7b6d968403d4a6769f05d7ecd"

      def install
        bin.install "hydra"
      end
    end
  end

  test do
    system "#{bin}/hydra version"
  end
end
