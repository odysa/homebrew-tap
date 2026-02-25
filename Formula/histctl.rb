class Histctl < Formula
  desc "Search, browse, and delete browser history from the terminal"
  homepage "https://github.com/odysa/histctl"
  url "https://github.com/odysa/histctl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/odysa/histctl/cmd.Version=v#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags)
  end

  test do
    assert_match "histctl", shell_output("#{bin}/histctl --help")
  end
end
