class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.233"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.233.tar.gz"
      sha256 "274e21d56201996fe24a01c70c69c875a3d8e2386f2cb9dc270b9909cd75a499"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.233.tar.gz"
      sha256 "06d591d4670ef5d80bf1649f9ce2e07348a139513e879729bc45de0616c0855b"
    end
  end

  def install
    bin.install "bb"
  end
end
