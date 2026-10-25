class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.282"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.282.tar.gz"
      sha256 "134ebafb1477a03256f4a83cab9918b4a6bf935925db309ca245b93aa97dae82"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.282.tar.gz"
      sha256 "4dfa154979bc36e7455351624de97c4bd5c1a03535b240c850a12c0a15a54624"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
