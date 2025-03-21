# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hydra < Formula
  desc "The Ory OAuth2 and OpenID Connect Platform (Ory Hydra)"
  homepage "https://www.ory.sh"
  version "2.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ory/hydra/releases/download/v2.3.0/hydra_2.3.0-macOS_sqlite_64bit.tar.gz"
      sha256 "5a139b5cd59d4e89e0e8ada8ad5656fa58e2ee472d4ae653756d9acd7a8cabb0"

      def install
        bin.install "hydra"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ory/hydra/releases/download/v2.3.0/hydra_2.3.0-macOS_sqlite_arm64.tar.gz"
      sha256 "898b8bf9ec65380f6dbd42965e31d9240f44ec428ce0fa082d811bcf0ad07973"

      def install
        bin.install "hydra"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ory/hydra/releases/download/v2.3.0/hydra_2.3.0-linux_sqlite_64bit.tar.gz"
        sha256 "9a05dca5076427d18f6a57bc58542c75989a0e37a605c85962ffc8a7cc3ba707"

        def install
          bin.install "hydra"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/ory/hydra/releases/download/v2.3.0/hydra_2.3.0-linux_sqlite_armv6.tar.gz"
        sha256 "c57f185f24e772801e93945cfe69a4a5d70f3b2b12eb0be988cdbb0e00198631"

        def install
          bin.install "hydra"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ory/hydra/releases/download/v2.3.0/hydra_2.3.0-linux_sqlite_arm64.tar.gz"
        sha256 "d5fe24aadbd53a0ce40f424a889c170469fd2b4dd15e129cdcb08696ff3eef4c"

        def install
          bin.install "hydra"
        end
      end
    end
  end

  test do
    system "#{bin}/hydra version"
  end
end
