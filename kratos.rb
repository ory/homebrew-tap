# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kratos < Formula
  desc "The Ory Identity Platform (Ory Kratos)"
  homepage "https://www.ory.sh"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ory/kratos/releases/download/v1.2.0/kratos_1.2.0-macOS_sqlite_64bit.tar.gz"
      sha256 "bd6b0a87f5f2e90986b684a4ebeab23d8b7b5df59a52c3480cc956773d04afa5"

      def install
        bin.install "kratos"
      end
    end
    on_arm do
      url "https://github.com/ory/kratos/releases/download/v1.2.0/kratos_1.2.0-macOS_sqlite_arm64.tar.gz"
      sha256 "a4970189782e664556896da2fc46db2a5133b749c68d4980bb5b73f3cc82c2e6"

      def install
        bin.install "kratos"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ory/kratos/releases/download/v1.2.0/kratos_1.2.0-linux_sqlite_64bit.tar.gz"
        sha256 "8625ef307019996fff572a6cc75e538eb5c4401d58c5ce2776248a6a3abb0416"

        def install
          bin.install "kratos"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/ory/kratos/releases/download/v1.2.0/kratos_1.2.0-linux_sqlite_armv6.tar.gz"
        sha256 "336129358a6e8c18dd359391d21c2da0cfe63ce9d59f8fc3d2cce02cc9536537"

        def install
          bin.install "kratos"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ory/kratos/releases/download/v1.2.0/kratos_1.2.0-linux_sqlite_arm64.tar.gz"
        sha256 "818b11fdb3abd275f8a7a8edfef9fb78553e4418f2156d58f5fe6d61b0cc626d"

        def install
          bin.install "kratos"
        end
      end
    end
  end

  test do
    system "#{bin}/kratos version"
  end
end
