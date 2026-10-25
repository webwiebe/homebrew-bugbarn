class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.278"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.278.tar.gz"
      sha256 "403484f62bcc7374ccc53d399935da88854a0f2cf3a9e0dbc61ed66042a23062"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.278.tar.gz"
      sha256 "fc6589e8fa8b28a24535c640aaf99350f30bd7df2c3859c81c8db2aa250bb555"
    end
  end

  def install
    bin.install "bb"
  end
end
