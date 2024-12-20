# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Oathkeeper < Formula
  desc "The Ory Identity and Access Proxy (Ory Oathkeeper)"
  homepage "https://www.ory.sh"
  version "0.40.8"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ory/oathkeeper/releases/download/v0.40.8/oathkeeper_0.40.8-macOS_sqlite_64bit.tar.gz"
      sha256 "15eecd872060ab28216c4bb4ecddcf908a0cd83684fb855f5afb7ae81a9de900"

      def install
        bin.install "oathkeeper"
      end
    end
    on_arm do
      url "https://github.com/ory/oathkeeper/releases/download/v0.40.8/oathkeeper_0.40.8-macOS_sqlite_arm64.tar.gz"
      sha256 "23139fab27f9ff118be5dbc4de18944e2909bc8fcf95586b2607cfdb8a131cfa"

      def install
        bin.install "oathkeeper"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ory/oathkeeper/releases/download/v0.40.8/oathkeeper_0.40.8-linux_sqlite_64bit.tar.gz"
        sha256 "f8e6bef6d7b60f88946aabf98d3936b82354943c649d88e357cb901563fd7856"

        def install
          bin.install "oathkeeper"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/ory/oathkeeper/releases/download/v0.40.8/oathkeeper_0.40.8-linux_sqlite_armv6.tar.gz"
        sha256 "bf201c74eabe65ed238bb26b31fde1eb7f39d4eb34cdeb65e4967a098727495c"

        def install
          bin.install "oathkeeper"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ory/oathkeeper/releases/download/v0.40.8/oathkeeper_0.40.8-linux_sqlite_arm64.tar.gz"
        sha256 "bb9bb02574ff3e5b47f1809c83e295bf80107b98522c771dee37ce6df3aab93b"

        def install
          bin.install "oathkeeper"
        end
      end
    end
  end

  test do
    system "#{bin}/oathkeeper version"
  end
end
