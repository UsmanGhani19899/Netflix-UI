class NetflixUpcomingList {
  String netImg;
  String upcomingDate;
  String upcomingTitle;
  String upcomingDes;

  NetflixUpcomingList(
      {required this.netImg,
      required this.upcomingDate,
      required this.upcomingDes,
      required this.upcomingTitle});
}

List<NetflixUpcomingList> netflixUpcomingList = [
  NetflixUpcomingList(
    netImg:
        "https://www.pinclipart.com/picdir/big/520-5200286_you-you-netflix-logo-png-clipart.png",
    upcomingDate: "Coming December 23",
    upcomingDes:
        "A dangerously charming, intensely obsessive young man goes to extreme measures to insert himself into the lives of those he is transfixed by",
    upcomingTitle: "You",
  ),
  NetflixUpcomingList(
    netImg:
        "https://i.pinimg.com/originals/99/40/e0/9940e0840029eec5e83c9974210960d9.png",
    upcomingDate: "Coming January 1",
    upcomingDes:
        "Money Heist (Spanish: La casa de papel, ;'The House of Paper') is a Spanish heist crime drama television series created by Álex Pina. ... The series was initially intended as a limited series to be told in two ",
    upcomingTitle: "Money Heist",
  ),
  NetflixUpcomingList(
    netImg:
        "https://occ-0-1723-1722.1.nflxso.net/dnm/api/v6/tx1O544a9T7n8Z_G12qaboulQQE/AAAABRgBMrc7tbyL0ZBgC-Q1ueLbIJL7vAxioQkdoFD12CUKZFqjzkWanvpZed6GG7OCIqSkpW2Sa0oeuIqoGXcXtl6Diiq-ybfDEEuPDj7m-4BF0bevRfKcm1XpxAJr6jC1fHZ4o_KLOzlYiakzIcONbLitLNFJMeAZ-3RyVz_VXsMfUg.png?r=9f9",
    upcomingDate: "Coming January 1",
    upcomingDes:
        "A financial adviser drags his family from Chicago to the Missouri Ozarks, where he must launder 500 million in five years to appease a drug boss. ",
    upcomingTitle: "Ozark",
  ),
  NetflixUpcomingList(
    netImg:
        "https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/tx1O544a9T7n8Z_G12qaboulQQE/AAAABfxyhVeNfzym6_eiAuWF1PNIkSMaTsYUevksM6w0Dcwdax1YdjCBbmY6S-jrJB_mClTdxIDmV2xtzptSaC7jv72aOfB2elM0RyI67c0q9mLWkH4ES36ln8LEqn7FRk67oni-jeiCTApI2kkMsKLadsr_izP5vaDkLpTY2P1BLlPVqA.png?r=9ab",
    upcomingDate: "Coming January 1",
    upcomingDes:
        "Commander Emma Green leaves behind her husband and daughter to lead an international crew of astronauts on a perilous three-year mission to Mars. Two-time Oscar winner Hilary Swank stars with Josh Charles",
    upcomingTitle: "Away",
  ),
];
