using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using YazılımSinama;

namespace WhiteBoxTesting
{
    [TestClass]
    public class WhiteBoxTest
    {
        DBOperations dbo = DBOperations.ClassOlustur();//veritabanı sınıfını tanımlıyoruz.
        [TestMethod]
        public void TestPerSonelEkle()
        {
            dbo.PersonelEkle("serbay", "simsir", Convert.ToDateTime("27.12.2018 05:48"), Convert.ToInt64(52378566445), "serbay.simsir@gmail.com", 2, false, 1);
            Assert.AreEqual(1, 1);
        }
        [TestMethod]
        public void TestToplamaPcEkle()
        {
            dbo.ToplamaSistemSatinAl("Razer RZ01", Convert.ToDateTime("27.12.2018 05:48"), Convert.ToDecimal(183.36), "Razer RZ01 - 0085 DeathAdder Ergonomik Oyun Faresi", 2, "GearBest", 3, true, false);
            Assert.AreEqual(1, 1);
        }
        [TestMethod]
        public void TestPersonelBilgiGuncelle()
        {
            dbo.BilgiGuncelle("SERBAY", "ŞİMŞİR", Convert.ToDateTime("11.11.1998 05:48"), Convert.ToInt64(5578566441), "SİMSİR.SERBAY@gmail.com", 2, false, 1);
            Assert.AreEqual(1, 1);
        }
        [TestMethod]
        public void TestPersonelSil()
        {
            dbo.PersonelSil("SERBAY", "ŞİMŞİR");
            Assert.AreEqual(1, 1);
        }
        [TestMethod]
        public void TestAtıgaAt()
        {
            dbo.AtıgaAt(Convert.ToString(62), 2);
            Assert.AreEqual(1, 1);
        }
        [TestMethod]
        public void TestUrunZimmetle()
        {
            dbo.UrunZimmetle(Convert.ToString(9), Convert.ToString(64), 2);
        }
    }
}
