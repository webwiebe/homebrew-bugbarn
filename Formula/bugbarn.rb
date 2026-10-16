class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.256"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.256.tar.gz"
      sha256 "1c08c375fc9cc052f0b288d9edc19f82953f7c8065dab8db93e9a8a6b9b7c0d8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.256.tar.gz"
      sha256 "9912d28a4608ff9de4039a326785b7689243fc20410638e3156e8743b301b2ec"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
