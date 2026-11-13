class Meetcal < Formula
  desc "CLI for querying MeetCal lifting data"
  homepage "https://github.com/meetcal/meetcal-app/tree/master/cli"
  version "4.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v4.0.0/darwin-arm64.tar.gz"
      sha256 "f5eea13de90e32a02b012a5c542b79daf5fdfd79ad93a386c0f33aca8649bbe0"
    else
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v4.0.0/darwin-x64.tar.gz"
      sha256 "471f525765d3b991c5ebfe7efac298a9cbd861f3a2220638ff75da6059115dd0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v4.0.0/linux-arm64.tar.gz"
      sha256 "de29a70c1e39f87b4418608102c13ea5e423bdf53b9e9dd33372cf78e18a68cc"
    else
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v4.0.0/linux-x64.tar.gz"
      sha256 "25f5451dfb64efa03cc7dbcf3e63e8e9be7e6377f30254e334478d64a1328d44"
    end
  end

  def install
    bin.install "meetcal"
  end

  test do
    system bin/"meetcal", "--help"
  end
end
