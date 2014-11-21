.class Landroid/app/WallpaperManager$BaiduInjector;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$invoke-setWallpaperOffsets-aa0944(Landroid/app/WallpaperManager;Landroid/os/IBinder;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 443
    invoke-static {p0, p1, p2, p3}, Landroid/app/WallpaperManager$BaiduInjector;->setWallpaperOffsets(Landroid/app/WallpaperManager;Landroid/os/IBinder;FF)Z

    move-result v0

    return v0
.end method

.method static generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "context"
    .parameter "bm"
    .parameter "width"
    .parameter "height"

    .prologue
    if-nez p1, :cond_1

    const/16 p1, 0x0

    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    const-string v12, "window"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .local v11, wm:Landroid/view/WindowManager;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .local v6, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v12, v6, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Bitmap;->setDensity(I)V

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    move/from16 v0, p2

    if-ne v12, v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move/from16 v0, p3

    if-eq v12, v0, :cond_0

    :cond_2
    move/from16 v0, p2

    int-to-float v12, v0

    const v13, 0x3fe66666

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    :cond_3
    :try_start_0
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, newbm:Landroid/graphics/Bitmap;
    sget v12, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v7, v12}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v2, c:Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .local v10, targetRect:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    iput v12, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    iput v12, v10, Landroid/graphics/Rect;->bottom:I

    iget v12, v10, Landroid/graphics/Rect;->right:I

    sub-int v4, p2, v12

    .local v4, deltaw:I
    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p3, v12

    .local v3, deltah:I
    if-gtz v4, :cond_4

    if-lez v3, :cond_5

    :cond_4
    if-le v4, v3, :cond_6

    move/from16 v0, p2

    int-to-float v12, v0

    iget v13, v10, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    div-float v9, v12, v13

    .local v9, scale:F
    :goto_1
    iget v12, v10, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    iput v12, v10, Landroid/graphics/Rect;->right:I

    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v12, v12

    iput v12, v10, Landroid/graphics/Rect;->bottom:I

    iget v12, v10, Landroid/graphics/Rect;->right:I

    sub-int v4, p2, v12

    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p3, v12

    .end local v9           #scale:F
    :cond_5
    div-int/lit8 v12, v4, 0x2

    div-int/lit8 v13, v3, 0x2

    invoke-virtual {v10, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .local v8, paint:Landroid/graphics/Paint;
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v12, Landroid/graphics/PorterDuffXfermode;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v13}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v12, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 p1, v7

    goto/16 :goto_0

    .end local v8           #paint:Landroid/graphics/Paint;
    :cond_6
    move/from16 v0, p3

    int-to-float v12, v0

    iget v13, v10, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v13, v13

    div-float v9, v12, v13

    .restart local v9       #scale:F
    goto :goto_1

    .end local v2           #c:Landroid/graphics/Canvas;
    .end local v3           #deltah:I
    .end local v4           #deltaw:I
    .end local v7           #newbm:Landroid/graphics/Bitmap;
    .end local v9           #scale:F
    .end local v10           #targetRect:Landroid/graphics/Rect;
    :catch_0
    move-exception v5

    .local v5, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Can\'t generate default bitmap"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private static setWallpaperOffsets(Landroid/app/WallpaperManager;Landroid/os/IBinder;FF)Z
    .locals 10
    .parameter "manager"
    .parameter "windowToken"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    const/4 v9, 0x1

    .line 447
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v8

    .line 448
    .local v8, minWidth:I
    const/4 v7, -0x1

    .line 450
    .local v7, bmpWidth:I
    invoke-static {}, Landroid/app/WallpaperManager;->access$sget-sGlobals-60adc1()Landroid/app/WallpaperManager$Globals;

    move-result-object v0

    #getter for: Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;
    invoke-static {p0}, Landroid/app/WallpaperManager;->access$iget-mContext-8e44b4(Landroid/app/WallpaperManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 451
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 452
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 455
    :cond_0
    if-lez v7, :cond_1

    if-ge v7, v8, :cond_1

    .line 456
    const/high16 p2, 0x3f00

    .line 461
    :cond_1
    :try_start_0
    #getter for: Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;
    invoke-static {p0}, Landroid/app/WallpaperManager;->access$iget-mContext-8e44b4(Landroid/app/WallpaperManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/WindowManagerGlobal;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    #getter for: Landroid/app/WallpaperManager;->mWallpaperXStep:F
    invoke-static {p0}, Landroid/app/WallpaperManager;->access$iget-mWallpaperXStep-2e2e4d(Landroid/app/WallpaperManager;)F

    move-result v4

    #getter for: Landroid/app/WallpaperManager;->mWallpaperYStep:F
    invoke-static {p0}, Landroid/app/WallpaperManager;->access$iget-mWallpaperYStep-3eebf1(Landroid/app/WallpaperManager;)F

    move-result v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_0
    return v9

    .line 464
    :catch_0
    move-exception v0

    goto :goto_0
.end method
