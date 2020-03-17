class Burc {
  String _burcAdi;
  String _burcTarihi;
  String _burcDetayi;
  String _burcKucukResim;
  String _burcBuyukResim;

  Burc(this._burcBuyukResim, this._burcDetayi, this._burcKucukResim, this._burcAdi,
      this._burcTarihi);

  String get burcBuyukResim => _burcBuyukResim;

  set burcBuyukResim(String value) {
    _burcBuyukResim = value;
  }

  String get burcKucukResim => _burcKucukResim;

  set burcKucukResim(String value) {
    _burcKucukResim = value;
  }

  String get burcTarihi => _burcTarihi;

  set burcTarihi(String value) {
    _burcTarihi = value;
  }

  String get burcDetayi => _burcDetayi;

  set burcDetayi(String value) {
    _burcDetayi = value;
  }

  String get burcAdi => _burcAdi;

  set burcAdi(String value) {
    _burcAdi = value;
  }


}