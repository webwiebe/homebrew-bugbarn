class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.153"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.153.tar.gz"
      sha256 "66637e028cf9208953649dccbfc61cabab6fc3b20530b468e3962bcab833a033"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.153.tar.gz"
      sha256 "3d9bbb06ffeee0d70e13eb33e1946a4a31b10227d385afb440584704db83e93a"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
