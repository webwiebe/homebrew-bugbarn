class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.369"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.369.tar.gz"
      sha256 "92b6b12bb76b7f35afa57ebe9bb6088fe7d97d2365d02cf7aeae365ea1354bbc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.369.tar.gz"
      sha256 "ef6cd976709b1e5f47b4d812e115b4a92980a121abad42d824a638e8889fdb6f"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
