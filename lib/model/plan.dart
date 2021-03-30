class Plant {
  String name;
  int price;
  String category;
  String description;
  String imageUrl;
  int height;
  bool islike;
  String huongdan;
  String quycach;
  String sd;
  String trongluong;

  Plant({
    this.name,
    this.price,
    this.category,
    this.description,
    this.imageUrl,
    this.height,
    this.huongdan,
    this.quycach,
    this.trongluong,
    this.sd,
  });
}

List<Plant> listPlants = [
  Plant(
      name: 'Sen đá Limited',
      price: 19000,
      category: 'Indoor plant',
      description:
          'Kết hợp độc đáo giữa Sen đá & chậu sứ Bát Tràng,Kích thước nhỏ nhắn phù hợp mọi không gian,Cây xanh giúp giảm căng thẳng, hút bức xạ điện tử,Là loại cây rất khỏe, bền & ít cần chăm sóc,Phù hợp trang trí để bàn, tô điểm góc làm việc thêm mầu sắc & sức sống',
      imageUrl: 'assets/images/sendakc.jpg',
      height: 140,
      trongluong: '300 g',
      sd: 'Chậu cây phù hợp để bàn trang trí góc làm việc, góc học tập...',
      quycach:
          'Bộ sản phẩm bao gồm: 01 cẩm nhung, 01 chậu sứ, đất & sỏi cát trắng,sản phẩm được bọc ngoài bằng hộp Carton 03 lớp,bên trong hộp có chèn xốp hơi để chống va đạp, vỡ bể',
      huongdan:
          'Để nơi thoáng, ánh sáng nhẹ,nước tưới: vừa đủ ẩm, 2 - 3 lần/ tuần'),
  Plant(
    name: 'Kim Tiền',
    price: 18000,
    category: 'Indoor plant',
    sd: 'Chậu cây phù hợp để bàn trang trí góc làm việc, góc học tập...',
    description:
        'Kết hợp độc đáo giữa Sen đá & chậu sứ Bát Tràng,Kích thước nhỏ nhắn phù hợp mọi không gian,Cây xanh giúp giảm căng thẳng, hút bức xạ điện tử,Là loại cây rất khỏe, bền & ít cần chăm sóc,Phù hợp trang trí để bàn, tô điểm góc làm việc thêm mầu sắc & sức sống',
    imageUrl: 'assets/images/kimtien.png',
    height: 140,
    trongluong: '300 g',
    quycach:
        'Bộ sản phẩm bao gồm: 01 cẩm nhung, 01 chậu sứ, đất & sỏi cát trắng,sản phẩm được bọc ngoài bằng hộp Carton 03 lớp,bên trong hộp có chèn xốp hơi để chống va đạp, vỡ bể',
    huongdan:
        'Để nơi thoáng, ánh sáng nhẹ,nước tưới: vừa đủ ẩm, 2 - 3 lần/ tuần',
  ),
  Plant(
    name: 'Sen đá mini',
    price: 30000,
    category: 'Indoor plant',
    sd: 'Chậu cây phù hợp để bàn trang trí góc làm việc, góc học tập...',
    description:
        'Kết hợp độc đáo giữa Sen đá & chậu sứ Bát Tràng,Kích thước nhỏ nhắn phù hợp mọi không gian,Cây xanh giúp giảm căng thẳng, hút bức xạ điện tử,Là loại cây rất khỏe, bền & ít cần chăm sóc,Phù hợp trang trí để bàn, tô điểm góc làm việc thêm mầu sắc & sức sống',
    imageUrl: 'assets/images/senmini.jpg',
    height: 70,
    trongluong: '300 g',
    quycach:
        'Bộ sản phẩm bao gồm: 01 cẩm nhung, 01 chậu sứ, đất & sỏi cát trắng,sản phẩm được bọc ngoài bằng hộp Carton 03 lớp,bên trong hộp có chèn xốp hơi để chống va đạp, vỡ bể',
    huongdan:
        'Để nơi thoáng, ánh sáng nhẹ,nước tưới: vừa đủ ẩm, 2 - 3 lần/ tuần',
  ),
  Plant(
    name: 'Sương rồng',
    price: 99000,
    category: 'Indoor plant',
    sd: 'Chậu cây phù hợp để bàn trang trí góc làm việc, góc học tập...',
    description:
        'Kết hợp độc đáo giữa Sen đá & chậu sứ Bát Tràng,Kích thước nhỏ nhắn phù hợp mọi không gian,Cây xanh giúp giảm căng thẳng, hút bức xạ điện tử,Là loại cây rất khỏe, bền & ít cần chăm sóc,Phù hợp trang trí để bàn, tô điểm góc làm việc thêm mầu sắc & sức sống',
    imageUrl: 'assets/images/suongrong1.jpg',
    height: 140,
    trongluong: '300 g',
    quycach:
        'Bộ sản phẩm bao gồm: 01 cẩm nhung, 01 chậu sứ, đất & sỏi cát trắng,sản phẩm được bọc ngoài bằng hộp Carton 03 lớp,bên trong hộp có chèn xốp hơi để chống va đạp, vỡ bể',
    huongdan:
        'Để nơi thoáng, ánh sáng nhẹ,nước tưới: vừa đủ ẩm, 2 - 3 lần/ tuần',
  ),
  Plant(
    name: 'Phú quý',
    price: 199000,
    category: 'Indoor plant',
    sd: 'Chậu cây phù hợp để bàn trang trí góc làm việc, góc học tập...',
    description:
        'Kết hợp độc đáo giữa Sen đá & chậu sứ Bát Tràng,Kích thước nhỏ nhắn phù hợp mọi không gian,Cây xanh giúp giảm căng thẳng, hút bức xạ điện tử,Là loại cây rất khỏe, bền & ít cần chăm sóc,Phù hợp trang trí để bàn, tô điểm góc làm việc thêm mầu sắc & sức sống',
    imageUrl: 'assets/images/phattai.jpg',
    height: 150,
    trongluong: '300 g',
    quycach:
        'Bộ sản phẩm bao gồm: 01 cẩm nhung, 01 chậu sứ, đất & sỏi cát trắng,sản phẩm được bọc ngoài bằng hộp Carton 03 lớp,bên trong hộp có chèn xốp hơi để chống va đạp, vỡ bể',
    huongdan:
        'Để nơi thoáng, ánh sáng nhẹ,nước tưới: vừa đủ ẩm, 2 - 3 lần/ tuần',
  ),
];
