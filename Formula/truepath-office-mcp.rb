class TruepathOfficeMcp < Formula
  desc "TruePath Office document engine — `truepath` CLI + MCP server for Word/Excel/PowerPoint/PDF"
  homepage "https://github.com/JoyTruepath/truepath-office-mcp"
  url "https://github.com/JoyTruepath/truepath-office-mcp/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "408905adcae3c558e959a05bb3b9723482e57d8852d3a9a3cf8561fb670dd067"
  license "MIT"

  depends_on xcode: ["15.0", :build]
  depends_on macos: :ventura

  def install
    # The repo's root Package.swift builds both products.
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/truepath"
    bin.install ".build/release/truepath-office-mcp"
  end

  test do
    assert_match "truepath", shell_output("#{bin}/truepath version")
    assert_match "Spreadsheet", shell_output("#{bin}/truepath detect xlsx")
  end
end
