class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.135"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.135.tar.gz"
      sha256 "11cb68e9f76d9b1a461729b21e2ee86384b57fc3fff55101b061adfb937081e6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.135.tar.gz"
      sha256 "faac6cda8e446bae22e7875bca5fed9c8483cdd5eac9443ee2c0d13842400392"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
