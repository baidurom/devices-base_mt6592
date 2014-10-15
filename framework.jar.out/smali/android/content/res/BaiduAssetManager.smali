.class public Landroid/content/res/BaiduAssetManager;
.super Landroid/content/res/AssetManager;
.source "BaiduAssetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/BaiduAssetManager$BaiduMultiThemeInjector;,
        Landroid/content/res/BaiduAssetManager$BaiduMContentObserver;,
        Landroid/content/res/BaiduAssetManager$BaiduReadChannelThread;,
        Landroid/content/res/BaiduAssetManager$BaiduChannelInjector;
    }
.end annotation


# static fields
.field private static final SINA_WEIBO_CONFIG_JASON:Ljava/lang/String; = "cfg.json"

.field private static final SINA_WEIBO_RES_BEGIN_ID:I = 0x7f010000

.field private static final SINA_WEIBO_WM_KEY:Ljava/lang/String; = "\"WM\""

.field private static final SINA_WEIBO_WM_VALUE_FOR_BAIDU:Ljava/lang/String; = "9178_0005"

.field private static final SING_WEIBO_PACKAGE_NAME:Ljava/lang/String; = "com.sina.weibo"

.field private static final TAG:Ljava/lang/String; = "BaiduAssetManager"

.field private static sDpi:I

.field static final sUri:Landroid/net/Uri;


# instance fields
.field mContext:Landroid/content/Context;

.field mIconPath:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mObserver:Landroid/database/ContentObserver;

.field mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "content://com.baidu.bsy.channel"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/content/res/BaiduAssetManager;->sUri:Landroid/net/Uri;

    .line 265
    const/4 v0, 0x0

    sput v0, Landroid/content/res/BaiduAssetManager;->sDpi:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/res/AssetManager;-><init>()V

    .line 50
    invoke-static {p0}, Landroid/content/res/BaiduAssetManager$BaiduMultiThemeInjector;->setIconPath(Landroid/content/res/BaiduAssetManager;)V

    .line 51
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .parameter "isSystem"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;-><init>(Z)V

    .line 44
    invoke-static {p0}, Landroid/content/res/BaiduAssetManager$BaiduMultiThemeInjector;->setIconPath(Landroid/content/res/BaiduAssetManager;)V

    .line 45
    return-void
.end method

.method static synthetic access$sget-sDpi-c0b92c()I
    .locals 1

    .prologue
    .line 31
    sget v0, Landroid/content/res/BaiduAssetManager;->sDpi:I

    return v0
.end method

.method private final addBaiduWmCfgInSinaWeibo([B)[B
    .locals 11
    .parameter "bArray"

    .prologue
    const/16 v10, 0x22

    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 449
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    .line 450
    .local v3, str:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 451
    :cond_0
    const-string v8, "BaiduAssetManager"

    const-string/jumbo v9, "sina weibo\'s cfg.json is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v7

    .line 482
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 455
    .restart local p1
    :cond_2
    const-string v8, "\"WM\""

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 456
    .local v4, wmBeginIdx:I
    if-ne v9, v4, :cond_3

    move-object p1, v7

    .line 457
    goto :goto_0

    .line 459
    :cond_3
    const-string v8, "\"WM\""

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v3, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 460
    if-ne v9, v4, :cond_4

    move-object p1, v7

    .line 461
    goto :goto_0

    .line 463
    :cond_4
    const/16 v8, 0x2c

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 464
    .local v5, wmEndIdx:I
    if-ne v9, v5, :cond_5

    .line 465
    const/16 v8, 0x7d

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 466
    :cond_5
    if-ne v9, v5, :cond_6

    move-object p1, v7

    .line 467
    goto :goto_0

    .line 469
    :cond_6
    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    .line 470
    if-eq v9, v5, :cond_7

    if-le v4, v5, :cond_8

    :cond_7
    move-object p1, v7

    .line 471
    goto :goto_0

    .line 473
    :cond_8
    const/4 v7, 0x0

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, preStr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, postStr:Ljava/lang/String;
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 477
    .local v6, wmStr:Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "9178_0005"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 478
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "9178_0005"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, outStr:Ljava/lang/String;
    const-string v7, "BaiduAssetManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "outPut String: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto/16 :goto_0
.end method

.method private final hookAssetManagerOpen(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 7
    .parameter "fileName"
    .parameter "accessMode"

    .prologue
    .line 487
    invoke-direct {p0, p1}, Landroid/content/res/BaiduAssetManager;->isSinaWeiboCfg(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 489
    :try_start_0
    const-string v3, "BaiduAssetManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sina weibo cfg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {p0, p1, p2}, Landroid/content/res/BaiduAssetManager;->openAssetBaidu(Ljava/lang/String;I)I

    move-result v0

    .line 491
    .local v0, asset:I
    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {p0, v0}, Landroid/content/res/BaiduAssetManager;->newAssetInputStream(I)Landroid/content/res/AssetManager$AssetInputStream;

    move-result-object v1

    .line 493
    .local v1, res:Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/res/BaiduAssetManager;->incRefsLockedBaidu(I)V

    .line 494
    invoke-virtual {v1}, Landroid/content/res/AssetManager$AssetInputStream;->getmLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 495
    invoke-virtual {v1}, Landroid/content/res/AssetManager$AssetInputStream;->getmLength()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v2, v3, [B

    .line 496
    .local v2, resArray:[B
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager$AssetInputStream;->read([B)I

    .line 497
    invoke-direct {p0, v2}, Landroid/content/res/BaiduAssetManager;->addBaiduWmCfgInSinaWeibo([B)[B

    move-result-object v2

    .line 499
    if-eqz v2, :cond_0

    .line 500
    invoke-virtual {v1}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    .line 501
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 512
    .end local v0           #asset:I
    .end local v1           #res:Landroid/content/res/AssetManager$AssetInputStream;
    .end local v2           #resArray:[B
    :goto_0
    return-object v3

    .line 505
    .restart local v0       #asset:I
    .restart local v1       #res:Landroid/content/res/AssetManager$AssetInputStream;
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/AssetManager$AssetInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v0           #asset:I
    .end local v1           #res:Landroid/content/res/AssetManager$AssetInputStream;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 507
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private final isSinaWeiboCfg(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 439
    if-eqz p1, :cond_0

    const-string v1, "cfg.json"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    const/high16 v1, 0x7f01

    invoke-virtual {p0, v1}, Landroid/content/res/BaiduAssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, pkgName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.sina.weibo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    const/4 v1, 0x1

    .line 445
    .end local v0           #pkgName:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setDensityDpi(I)V
    .locals 0
    .parameter "dpi"

    .prologue
    .line 672
    sput p0, Landroid/content/res/BaiduAssetManager;->sDpi:I

    .line 673
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 403
    invoke-super {p0}, Landroid/content/res/AssetManager;->close()V

    .line 405
    invoke-static {p0}, Landroid/content/res/BaiduAssetManager$BaiduChannelInjector;->close(Landroid/content/res/BaiduAssetManager;)V

    .line 407
    return-void
.end method

.method public final open(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 2
    .parameter "fileName"
    .parameter "accessMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-direct {p0, p1, p2}, Landroid/content/res/BaiduAssetManager;->hookAssetManagerOpen(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    .line 424
    .local v0, hookResult:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 433
    .end local v0           #hookResult:Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 429
    .restart local v0       #hookResult:Ljava/io/InputStream;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 431
    .local v1, res:Ljava/io/InputStream;
    invoke-static {p0, v1, p1}, Landroid/content/res/BaiduAssetManager$BaiduChannelInjector;->getNewInputFileStream(Landroid/content/res/BaiduAssetManager;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 433
    goto :goto_0
.end method

.method public final openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    .locals 1
    .parameter "cookie"
    .parameter "fileName"
    .parameter "accessMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    .line 522
    .local v0, res:Ljava/io/InputStream;
    invoke-static {p0, v0, p2}, Landroid/content/res/BaiduAssetManager$BaiduChannelInjector;->getNewInputFileStream(Landroid/content/res/BaiduAssetManager;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 524
    return-object v0
.end method

.method public final openNonAsset(Landroid/util/TypedValue;Ljava/lang/String;IIZ)Ljava/io/InputStream;
    .locals 13
    .parameter "value"
    .parameter "fileName"
    .parameter "id"
    .parameter "accessMode"
    .parameter "isIcon"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 577
    iget v2, p1, Landroid/util/TypedValue;->assetCookie:I

    .line 578
    .local v2, cookie:I
    monitor-enter p0

    .line 579
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/BaiduAssetManager;->ismOpen()Z

    move-result v10

    if-nez v10, :cond_0

    .line 580
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Assetmanager has been closed"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 665
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 583
    :cond_0
    :try_start_1
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/content/res/BaiduAssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 584
    .local v7, packageName:Ljava/lang/String;
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/content/res/BaiduAssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 594
    .local v9, resourceText:Ljava/lang/String;
    const/4 v1, 0x0

    .line 596
    .local v1, asset:I
    const/high16 v10, 0x7000

    move/from16 v0, p3

    if-ge v0, v10, :cond_5

    .line 597
    ushr-int/lit8 v6, p3, 0x18

    .line 599
    .local v6, packageId:I
    const/4 v10, 0x1

    if-ne v6, v10, :cond_2

    .line 600
    const-string v7, "framework-res"

    .line 604
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 605
    .local v4, is:Ljava/io/InputStream;
    const/4 v10, 0x0

    invoke-static {p1, p2, v7, v10}, Landroid/content/res/BaiduAssetManager$BaiduMultiThemeInjector;->openIconAsset(Landroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v4

    .line 606
    if-eqz v4, :cond_3

    .line 607
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/content/res/BaiduAssetManager;->incRefsLockedBaidu(I)V

    .line 608
    monitor-exit p0

    .line 663
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #packageId:I
    :goto_1
    return-object v4

    .line 601
    .restart local v6       #packageId:I
    :cond_2
    const/4 v10, 0x5

    if-ne v6, v10, :cond_1

    .line 602
    const-string v7, "framework-yi-res"

    goto :goto_0

    .line 610
    .restart local v4       #is:Ljava/io/InputStream;
    :cond_3
    move/from16 v0, p4

    invoke-virtual {p0, v2, p2, v0}, Landroid/content/res/BaiduAssetManager;->openNonAssetNativeBaidu(ILjava/lang/String;I)I

    move-result v1

    .line 660
    .end local v6           #packageId:I
    :cond_4
    if-eqz v1, :cond_b

    .line 661
    invoke-virtual {p0, v1}, Landroid/content/res/BaiduAssetManager;->newAssetInputStream(I)Landroid/content/res/AssetManager$AssetInputStream;

    move-result-object v8

    .line 662
    .local v8, res:Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/content/res/BaiduAssetManager;->incRefsLockedBaidu(I)V

    .line 663
    monitor-exit p0

    move-object v4, v8

    goto :goto_1

    .line 612
    .end local v4           #is:Ljava/io/InputStream;
    .end local v8           #res:Landroid/content/res/AssetManager$AssetInputStream;
    :cond_5
    const/4 v4, 0x0

    .line 613
    .restart local v4       #is:Ljava/io/InputStream;
    if-eqz p5, :cond_8

    .line 615
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 617
    .local v3, iconText:Ljava/lang/String;
    if-eqz v3, :cond_7

    iget-object v10, p0, Landroid/content/res/BaiduAssetManager;->mIconPath:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 618
    iget-object v10, p0, Landroid/content/res/BaiduAssetManager;->mIconPath:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 623
    .local v5, pack:Ljava/lang/String;
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {p1, v10, v7, v11}, Landroid/content/res/BaiduAssetManager$BaiduMultiThemeInjector;->openIconAsset(Landroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v4

    .line 626
    if-nez v4, :cond_6

    .line 627
    move/from16 v0, p4

    invoke-virtual {p0, v2, p2, v0}, Landroid/content/res/BaiduAssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    .line 630
    :cond_6
    if-eqz v4, :cond_4

    .line 631
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/content/res/BaiduAssetManager;->incRefsLockedBaidu(I)V

    .line 632
    monitor-exit p0

    goto :goto_1

    .line 620
    .end local v5           #pack:Ljava/lang/String;
    :cond_7
    move-object v5, v7

    .restart local v5       #pack:Ljava/lang/String;
    goto :goto_2

    .line 635
    .end local v3           #iconText:Ljava/lang/String;
    .end local v5           #pack:Ljava/lang/String;
    :cond_8
    const-string v10, "com.android.contacts"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 637
    const-string v10, "com.baidu.dialpad"

    const/4 v11, 0x0

    invoke-static {p1, p2, v10, v11}, Landroid/content/res/BaiduAssetManager$BaiduMultiThemeInjector;->openIconAsset(Landroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v4

    .line 640
    if-eqz v4, :cond_9

    .line 641
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/content/res/BaiduAssetManager;->incRefsLockedBaidu(I)V

    .line 642
    monitor-exit p0

    goto/16 :goto_1

    .line 646
    :cond_9
    const/4 v10, 0x0

    invoke-static {p1, p2, v7, v10}, Landroid/content/res/BaiduAssetManager$BaiduMultiThemeInjector;->openIconAsset(Landroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v4

    .line 648
    if-nez v4, :cond_a

    .line 649
    move/from16 v0, p4

    invoke-virtual {p0, v2, p2, v0}, Landroid/content/res/BaiduAssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    .line 652
    :cond_a
    if-eqz v4, :cond_4

    .line 653
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/content/res/BaiduAssetManager;->incRefsLockedBaidu(I)V

    .line 654
    monitor-exit p0

    goto/16 :goto_1

    .line 665
    :cond_b
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    new-instance v10, Ljava/io/FileNotFoundException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Asset absolute file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 540
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 541
    .local v0, uid:I
    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    const v1, 0x182b8

    if-lt v0, v1, :cond_2

    const v1, 0x1869f

    if-le v0, v1, :cond_0

    .line 550
    :cond_2
    iget-object v1, p0, Landroid/content/res/BaiduAssetManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 553
    iput-object p1, p0, Landroid/content/res/BaiduAssetManager;->mContext:Landroid/content/Context;

    .line 554
    invoke-static {p0}, Landroid/content/res/BaiduAssetManager$BaiduChannelInjector;->readChannelPkgsBackgroud(Landroid/content/res/BaiduAssetManager;)V

    .line 560
    new-instance v1, Landroid/content/res/BaiduAssetManager$BaiduMContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2, p0}, Landroid/content/res/BaiduAssetManager$BaiduMContentObserver;-><init>(Landroid/os/Handler;Landroid/content/res/BaiduAssetManager;)V

    iput-object v1, p0, Landroid/content/res/BaiduAssetManager;->mObserver:Landroid/database/ContentObserver;

    .line 562
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/content/res/BaiduAssetManager;->sUri:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/content/res/BaiduAssetManager;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "pkg"

    .prologue
    .line 532
    iput-object p1, p0, Landroid/content/res/BaiduAssetManager;->mPackageName:Ljava/lang/String;

    .line 533
    return-void
.end method
