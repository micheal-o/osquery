require File.expand_path("../Abstract/abstract-osquery-formula", __FILE__)

class Libmnl < AbstractOsqueryFormula
  desc "libipset dependency"
  homepage "https://netfilter.org/projects/libmnl/"
  license "LGPLv2.1+"
  url "https://www.netfilter.org/projects/libmnl/files/libmnl-1.0.4.tar.bz2"
  sha256 "171f89699f286a5854b72b91d06e8f8e3683064c5901fb09d954a9ab6f551f81"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
end
