{
  nio4r = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0gnmvbryr521r135yz5bv8354m7xn6miiapfgpg1bnwsvxz8xj6c";
      type = "gem";
    };
    version = "2.5.2";
  };
  puma = {
    dependencies = ["nio4r"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0v6zai6sinw5r1lchm278mm3dr8x5vi8pwmybwv9lz1kz02fk2g3";
      type = "gem";
    };
    version = "4.3.1";
  };
  rack = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1id0jsslx1ipv0pbqjfn7mjbb2vx2xybk7qypq59a17163xp30gr";
      type = "gem";
    };
    version = "2.0.8";
  };
}