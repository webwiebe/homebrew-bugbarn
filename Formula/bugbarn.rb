class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.142"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.142.tar.gz"
      sha256 "2445a46bef658f460b30366ab763c5ed5a34a774b95a50fbe19c4b3f5f76be29"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.142.tar.gz"
      sha256 "05ec30313996257da07e94711f26fbbfb8ea5bfe4a90d507d7b4bf25876aab6c"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
