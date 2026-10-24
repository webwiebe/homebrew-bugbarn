class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.271"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.271.tar.gz"
      sha256 "8f90181ca31cedd2910cdbb5ec06439436fdf2f5d058a3bd2ec0aaf0ec282748"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.271.tar.gz"
      sha256 "21c1529391782c163a0880ba41c748f9ca6d8b54f7b1de6775b0c5729c51f9d8"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
