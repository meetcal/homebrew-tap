class Meetcal < Formula
  desc "CLI for querying MeetCal lifting data"
  homepage "https://github.com/meetcal/meetcal-cli"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-cli/releases/download/v1.0.0/darwin-arm64.tar.gz"
      sha256 "76f45dae199f6c49c2992340b0d7872e99ec2a9709287b82ad774884b8433739"
    else
      url "https://github.com/meetcal/meetcal-cli/releases/download/v1.0.0/darwin-x64.tar.gz"
      sha256 "7b710ee420cc693cd79ce8f48f0d004f1840ea269b4049c9eea5d1d9b6012ede"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-cli/releases/download/v1.0.0/linux-arm64.tar.gz"
      sha256 "72b2992233fde958254772f88eb21deb7a82a96790e37821beaeb7aa54b5db33"
    else
      url "https://github.com/meetcal/meetcal-cli/releases/download/v1.0.0/linux-x64.tar.gz"
      sha256 "4579359057cc2b43851ef9d4dc0f6655f16b3e280d3e44918db852569b70e627"
    end
  end

  def install
    bin.install "meetcal"
  end

  test do
    system bin/"meetcal", "--help"
  end
end
