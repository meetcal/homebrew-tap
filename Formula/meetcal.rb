class Meetcal < Formula
  desc "CLI for querying MeetCal lifting data"
  homepage "https://github.com/meetcal/meetcal-app/tree/master/cli"
  version "2.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v2.2.0/darwin-arm64.tar.gz"
      sha256 "409e59bca591c40c6151814336b1a0b1c419b5c5be210f64687a98fc7c16e66f"
    else
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v2.2.0/darwin-x64.tar.gz"
      sha256 "4dbe9274e3bc14ab97daafd5cc8407dd5be364c889fa1facd93369a3e6f95a8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v2.2.0/linux-arm64.tar.gz"
      sha256 "3109f06b52d6f6264d3fcdff5996f4b640aaf4ec1c353b495b5fbd3e25a947b7"
    else
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v2.2.0/linux-x64.tar.gz"
      sha256 "4e21b8b6a99b3a8beb04417b59631b9b7639bc64b423c7b21c22bf2bc3e16cc3"
    end
  end

  def install
    bin.install "meetcal"
  end

  test do
    system bin/"meetcal", "--help"
  end
end
