class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.230"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.230.tar.gz"
      sha256 "e44b609fab1234dacb7e02d7c8018734a4bfbb2ee9e735eadc580bca05aac869"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.230.tar.gz"
      sha256 "abb5dd4fa7beae72b5b7ffcb52edb882ede652542eaa7fca9b6aa6dbda47341f"
    end
  end

  def install
    bin.install "bb"
  end
end
