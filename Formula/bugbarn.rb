class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.322"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.322.tar.gz"
      sha256 "78cf8770410d379f75a4aa91d64005294f978548462bf34f57508916d81e8110"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.322.tar.gz"
      sha256 "4cfafcdfa2718ec7f7b117c2b353508aec6f8d2849e4c196c83328c692718c58"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
