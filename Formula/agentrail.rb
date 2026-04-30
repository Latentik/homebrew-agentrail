class Agentrail < Formula
  desc "Portable coding-agent handoff CLI"
  homepage "https://github.com/Latentik/agentrail"
  version "0.1.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Latentik/agentrail/releases/download/v0.1.9/agentrail-v0.1.9-macos-arm64.tar.gz"
      sha256 "0672f3939662936f199e5ba143553b9f62157b82af183cdb97db3a893921a000"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"agentrail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentrail --version")
  end
end
