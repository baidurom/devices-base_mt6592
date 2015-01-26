本Project适用于作为mtk6592双卡机型百度云OS的开发参考。

使用方法：

1. 下载

   为了减少repo库的体积，base_mt6592暂时没有放在repo下载列表里，因此下载base_mt6592推荐使用git clone下载，第一次下载时先cd到devices目录，然后输入：

   git clone -b coron-mtk-4.2 https://github.com/baidurom/devices-base_mt6592.git

   即开始下载，下载完成后建议对其重命名, cd到devices目录，输入：mv ./devices-base_mt6592 ./base_mt6592，即将其重命名为base_mt6592

   以后base_mt6592的更新则只需要cd到devices/base_mt6592目录，输入git pull即可下载base_mt6592的更新。

   如果不使用git clone下载，则需要每次下载整个zip包进行覆盖，较为不便。

2. 使用

   正确下载后，devices目录下应存在除了base目录外的base_mt6592目录以及你的机型目录。

   请修改机型目录的Makefile配置，BASE := base_mt6592。

   配置完成后，当前机型的开发将使用base_mt6592来进行patch和更新。

   需要注意的是：

   coron-mtk-4.2的baidu/release更新的底包，暂不适用于mtk6592机型开发。

   需要开发者手动下载最新的底包放在baidu/baidu.zip后，再进行make ota编译。切记。

3. 最新的mtk6592的底包：

   ROM66: http://pan.baidu.com/s/1pJDPjF9

   ROM65: http://pan.baidu.com/s/1sj5DhNJ

   ROM64: http://pan.baidu.com/s/1gd7Zc2n

   ROM63: http://pan.baidu.com/s/1hqCata0

   ROM62: http://pan.baidu.com/s/1sj8tKtB

   ROM61: http://pan.baidu.com/s/1eQAHJ38