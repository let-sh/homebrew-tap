# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lets < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://let.sh/"
  version "0.2.47"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "http://install.let-sh.com/cli_0.2.47_darwin_amd64.tar.gz"
      sha256 "f7fe6d9c5573f6839fc37c8ae97696c486dc6e6a2f0590df998b05463bda39e9"

      def install
        bin.install "lets"
      end
    end
    if Hardware::CPU.arm?
      url "http://install.let-sh.com/cli_0.2.47_darwin_arm64.tar.gz"
      sha256 "f8f9ac984ed75af025a167b060a3b8a42b6bb8ef8d9fbbc12afa77654e4b96f8"

      def install
        bin.install "lets"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "http://install.let-sh.com/cli_0.2.47_linux_amd64.tar.gz"
      sha256 "e2aa3564c0b6c278599e972113767a5a9f63f64536b5e7e61d07d879c93b892a"

      def install
        bin.install "lets"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "http://install.let-sh.com/cli_0.2.47_linux_arm64.tar.gz"
      sha256 "dba413a7d6da271834c06e74fc4a3a2a638e31262d7236412ccf3f9e7422db4e"

      def install
        bin.install "lets"
      end
    end
  end

  depends_on "git"
  depends_on "zsh" => :optional

  def caveats; <<~EOS
    Run `lets --help`
  EOS
  end

  test do
    system "#{bin}/lets version"
  end
end
