class Meetcal < Formula
  desc "CLI for querying MeetCal lifting data"
  homepage "https://github.com/meetcal/meetcal-cli"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-cli/releases/download/v1.0.0/darwin-arm64.tar.gz"
      sha256 "74311505eab231e660a362be149226a5352fb1ba4e99125da7246a23fcc5b389"
    else
      url "https://github.com/meetcal/meetcal-cli/releases/download/v1.0.0/darwin-x64.tar.gz"
      sha256 "64b2b89959177644130f568cd61fc2646f1be4dc964b20f503efb40234dc26f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-cli/releases/download/v1.0.0/linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/meetcal/meetcal-cli/releases/download/v1.0.0/linux-x64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "meetcal"
  end

  test do
    system bin/"meetcal", "--help"
  end
end
