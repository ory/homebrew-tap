# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "Use Ory from the your terminal!"
  homepage "https://www.ory.sh"
  version "0.1.22"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ory/cli/releases/download/v0.1.22/ory_0.1.22-macOS_sqlite_64bit.tar.gz"
      sha256 "fa0dae319a041eb3a4f9a855f9170cc7d2bef79f2fc74e2ae56dfdc5c33289df"

      def install
        bin.install "ory"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ory/cli/releases/download/v0.1.22/ory_0.1.22-macOS_sqlite_arm64.tar.gz"
      sha256 "17d48a3131689f4970dc1dbbd294278d2fc6c1a98d1e3f57879646ee90892bfa"

      def install
        bin.install "ory"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ory/cli/releases/download/v0.1.22/ory_0.1.22-linux_sqlite_64bit.tar.gz"
      sha256 "88ee434b29e4e42aee6c812735115929555b78a0d66d32e6e7deee1ff749eadf"

      def install
        bin.install "ory"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ory/cli/releases/download/v0.1.22/ory_0.1.22-linux_sqlite_arm64.tar.gz"
      sha256 "187e7fe389f35f147f536a957f5e4ec9afd8efb40952777cc4e8c2a453814df2"

      def install
        bin.install "ory"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/ory/cli/releases/download/v0.1.22/ory_0.1.22-linux_sqlite_armv6.tar.gz"
      sha256 "342da738a7eceabf5ec187cab28528d375fcceffa64e09563cd1f1881de5c8de"

      def install
        bin.install "ory"
      end
    end
  end

  test do
    system "#{bin}/ory version"
  end
end
