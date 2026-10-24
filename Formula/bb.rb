class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.271"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.271.tar.gz"
      sha256 "3a9ede60c62f5a5e0e429909f26f0ab5b9238c854b6c3fd520047c85552c1b4d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.271.tar.gz"
      sha256 "ec108746adfa9e7f868bec94bb7fe8c1cf8c9d15ce9e0e6c251bd3194a5e4212"
    end
  end

  def install
    bin.install "bb"
  end
end
