class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.335"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.335.tar.gz"
      sha256 "7eea670077fde306eda1938ff53578491aae3407a03373ec083e5419a4a892d4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.335.tar.gz"
      sha256 "6d2d92f6082dd0849d13155908a7faae3a481dc614213ddaac0810df07aa3a71"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
