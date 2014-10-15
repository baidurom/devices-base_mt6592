.class public Lcom/mediatek/banyan/widget/MTKImageView;
.super Landroid/widget/ImageView;
.source "MTKImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;,
        Lcom/mediatek/banyan/widget/MTKImageView$GifThread;,
        Lcom/mediatek/banyan/widget/MTKImageView$Bound;
    }
.end annotation


# static fields
.field private static final MAX_HEIGHT:I = 0x1e0

.field private static final MAX_WIDTH:I = 0x280

.field private static final MSG_RUN_OBJECT:I = 0x401

.field private static final STORE_PIC_TAG:Ljava/lang/String; = "storePic"


# instance fields
.field volatile mAbort:Z

.field private mAnimationThread:Ljava/lang/Thread;

.field private mContext:Landroid/content/Context;

.field private mCurrGifFrame:I

.field protected mGifStream:Ljava/io/InputStream;

.field protected mHandler:Landroid/os/Handler;

.field protected mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

.field private mLastFrame:Landroid/graphics/Bitmap;

.field private mResGif:Z

.field protected mResourceId:I

.field private mSetFromGif:Z

.field protected mUri:Landroid/net/Uri;

.field private mUriGif:Z

.field private self:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 84
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mLastFrame:Landroid/graphics/Bitmap;

    .line 257
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z

    .line 259
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUri:Landroid/net/Uri;

    .line 260
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    .line 261
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUriGif:Z

    .line 262
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    .line 264
    iput v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    .line 267
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 269
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    .line 270
    new-instance v0, Lcom/mediatek/banyan/widget/MTKImageView$2;

    invoke-direct {v0, p0}, Lcom/mediatek/banyan/widget/MTKImageView$2;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;)V

    iput-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    .line 91
    iput-object p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->initForGif()V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mLastFrame:Landroid/graphics/Bitmap;

    .line 257
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z

    .line 259
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUri:Landroid/net/Uri;

    .line 260
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    .line 261
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUriGif:Z

    .line 262
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    .line 264
    iput v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    .line 267
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 269
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    .line 270
    new-instance v0, Lcom/mediatek/banyan/widget/MTKImageView$2;

    invoke-direct {v0, p0}, Lcom/mediatek/banyan/widget/MTKImageView$2;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;)V

    iput-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    .line 104
    iput-object p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->initForGif()V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mLastFrame:Landroid/graphics/Bitmap;

    .line 257
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z

    .line 259
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUri:Landroid/net/Uri;

    .line 260
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    .line 261
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUriGif:Z

    .line 262
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    .line 264
    iput v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    .line 267
    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 269
    iput-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    .line 270
    new-instance v0, Lcom/mediatek/banyan/widget/MTKImageView$2;

    invoke-direct {v0, p0}, Lcom/mediatek/banyan/widget/MTKImageView$2;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;)V

    iput-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    .line 118
    iput-object p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->initForGif()V

    .line 122
    return-void
.end method

.method private abortAnimationThread()V
    .locals 3

    .prologue
    .line 637
    const-string v1, "MTKImageView"

    const-string v2, "abortAnimationThread()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 639
    const-string v1, "MTKImageView"

    const-string v2, "abortAnimationThread:thread null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :goto_0
    return-void

    .line 643
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    .line 646
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 649
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    .line 656
    const-string v1, "MTKImageView"

    const-string v2, "abortAnimationThread:remove messages"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x401

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "MTKImageView"

    const-string v2, "abortAnimationThread:join interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/mediatek/banyan/widget/MTKImageView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/banyan/widget/MTKImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->gifAnimation()V

    return-void
.end method

.method static synthetic access$502(Lcom/mediatek/banyan/widget/MTKImageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/banyan/widget/MTKImageView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mLastFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/banyan/widget/MTKImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mLastFrame:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private closeGifStream()V
    .locals 4

    .prologue
    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 293
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MTKImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close GIF InputStream failed, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private decodeBoundsInfo(Landroid/net/Uri;)Lcom/mediatek/banyan/widget/MTKImageView$Bound;
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 420
    const/4 v2, 0x0

    .line 421
    .local v2, input:Ljava/io/InputStream;
    new-instance v0, Lcom/mediatek/banyan/widget/MTKImageView$Bound;

    invoke-direct {v0, p0, v4}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;Lcom/mediatek/banyan/widget/MTKImageView$1;)V

    .line 423
    .local v0, bound:Lcom/mediatek/banyan/widget/MTKImageView$Bound;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 424
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 425
    .local v3, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 426
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 428
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    #setter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->width:I
    invoke-static {v0, v4}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$202(Lcom/mediatek/banyan/widget/MTKImageView$Bound;I)I

    .line 429
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    #setter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->height:I
    invoke-static {v0, v4}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$302(Lcom/mediatek/banyan/widget/MTKImageView$Bound;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 434
    if-eqz v2, :cond_0

    .line 436
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 444
    .end local v3           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v0

    .line 437
    .restart local v3       #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 439
    .local v1, e:Ljava/io/IOException;
    const-string v4, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 430
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 432
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 434
    if-eqz v2, :cond_0

    .line 436
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 437
    :catch_2
    move-exception v1

    .line 439
    .local v1, e:Ljava/io/IOException;
    const-string v4, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 434
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    .line 436
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 440
    :cond_1
    :goto_1
    throw v4

    .line 437
    :catch_3
    move-exception v1

    .line 439
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private decodeDegreeInfo(Landroid/net/Uri;)I
    .locals 8
    .parameter "uri"

    .prologue
    .line 448
    const/4 v3, 0x0

    .line 449
    .local v3, inputForRotate:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 450
    .local v4, orientation:I
    const/4 v0, 0x0

    .line 452
    .local v0, degree:I
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 453
    if-eqz v3, :cond_0

    .line 454
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 455
    .local v2, exif:Landroid/media/ExifInterface;
    if-eqz v2, :cond_0

    .line 456
    const-string v5, "Orientation"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 457
    invoke-direct {p0, v4}, Lcom/mediatek/banyan/widget/MTKImageView;->getExifRotation(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 465
    .end local v2           #exif:Landroid/media/ExifInterface;
    :cond_0
    if-eqz v3, :cond_1

    .line 467
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 473
    :cond_1
    :goto_0
    return v0

    .line 468
    :catch_0
    move-exception v1

    .line 469
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 460
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 461
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    if-eqz v3, :cond_1

    .line 467
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 468
    :catch_2
    move-exception v1

    .line 469
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 462
    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 463
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 465
    if-eqz v3, :cond_1

    .line 467
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 468
    :catch_4
    move-exception v1

    .line 469
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MTKImageView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 465
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_2

    .line 467
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 470
    :cond_2
    :goto_1
    throw v5

    .line 468
    :catch_5
    move-exception v1

    .line 469
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "MTKImageView"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getExifRotation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, degrees:I
    packed-switch p1, :pswitch_data_0

    .line 394
    :goto_0
    :pswitch_0
    return v0

    .line 382
    :pswitch_1
    const/4 v0, 0x0

    .line 383
    goto :goto_0

    .line 385
    :pswitch_2
    const/16 v0, 0x5a

    .line 386
    goto :goto_0

    .line 388
    :pswitch_3
    const/16 v0, 0xb4

    .line 389
    goto :goto_0

    .line 391
    :pswitch_4
    const/16 v0, 0x10e

    goto :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private gifAnimation()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 669
    :try_start_0
    const-string v6, "MTKImageView"

    const-string v7, "gifAnimation:call openGifStream()"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->openGifStream()V

    .line 671
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    if-nez v6, :cond_1

    .line 672
    const-string v6, "MTKImageView"

    const-string v7, "gifAnimation:got null mGifStream"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-eqz v6, :cond_0

    .line 754
    iput-object v10, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 757
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    .line 759
    :goto_0
    return-void

    .line 675
    :cond_1
    :try_start_1
    iget-boolean v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    if-eqz v6, :cond_3

    .line 676
    const-string v6, "MTKImageView"

    const-string v7, "gifAnimation:after open stream:thread aborted"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-eqz v6, :cond_2

    .line 754
    iput-object v10, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 757
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    goto :goto_0

    .line 681
    :cond_3
    const/4 v6, 0x0

    :try_start_2
    iput-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 683
    :try_start_3
    const-class v6, Lcom/mediatek/common/gifdecoder/IGifDecoder;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/common/gifdecoder/IGifDecoder;

    iput-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 688
    :goto_1
    :try_start_4
    iget-boolean v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    if-eqz v6, :cond_6

    .line 689
    const-string v6, "MTKImageView"

    const-string v7, "gifAnimation:after new GifDecoder:thread aborted"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 752
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-eqz v6, :cond_4

    .line 754
    iput-object v10, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 757
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    goto :goto_0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 752
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-eqz v7, :cond_5

    .line 754
    iput-object v10, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 757
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    throw v6

    .line 693
    :cond_6
    :try_start_6
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-nez v6, :cond_8

    .line 694
    const-string v6, "MTKImageView"

    const-string v7, "Decode GIF resource failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->showFirstGifFrame()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 752
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-eqz v6, :cond_7

    .line 754
    iput-object v10, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 757
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    goto :goto_0

    .line 700
    :cond_8
    :try_start_7
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    invoke-interface {v6}, Lcom/mediatek/common/gifdecoder/IGifDecoder;->getTotalFrameCount()I

    move-result v6

    if-nez v6, :cond_a

    .line 701
    const-string v6, "MTKImageView"

    const-string v7, "gifAnimation:decode gif stream fails"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 706
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->showFirstGifFrame()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 752
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-eqz v6, :cond_9

    .line 754
    iput-object v10, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 757
    :cond_9
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    goto/16 :goto_0

    .line 710
    :cond_a
    const-wide/16 v2, 0x0

    .line 711
    .local v2, frameDuration:J
    :try_start_8
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    invoke-interface {v6}, Lcom/mediatek/common/gifdecoder/IGifDecoder;->getTotalFrameCount()I

    move-result v5

    .line 712
    .local v5, totalFrameCount:I
    const/4 v6, 0x0

    iput v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    .line 716
    :goto_2
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    iget v7, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    invoke-interface {v6, v7}, Lcom/mediatek/common/gifdecoder/IGifDecoder;->getFrameBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 718
    .local v4, gifFrame:Landroid/graphics/Bitmap;
    iget-boolean v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    if-eqz v6, :cond_c

    .line 719
    const-string v6, "MTKImageView"

    const-string v7, "gifAnimation:after decode:thread aborted"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 752
    :goto_3
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    if-eqz v6, :cond_b

    .line 754
    iput-object v10, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    .line 757
    :cond_b
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    goto/16 :goto_0

    .line 724
    :cond_c
    :try_start_9
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x401

    new-instance v9, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;

    invoke-direct {v9, p0, v4}, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 728
    iget-object v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mIGifDecoder:Lcom/mediatek/common/gifdecoder/IGifDecoder;

    iget v7, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    invoke-interface {v6, v7}, Lcom/mediatek/common/gifdecoder/IGifDecoder;->getFrameDuration(I)I

    move-result v6

    int-to-long v2, v6

    .line 729
    const-string v6, "MTKImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sleep for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms for frame "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " //this="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/banyan/widget/MTKImageView;->self:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-boolean v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    if-eqz v6, :cond_d

    .line 733
    const-string v6, "MTKImageView"

    const-string v7, "gifAnimation:animating:thread aborted"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 738
    :cond_d
    :try_start_a
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    .line 744
    :goto_4
    if-ne v11, v5, :cond_e

    .line 745
    :try_start_b
    const-string v6, "MTKImageView"

    const-string v7, "gifAnim:single frame, cancel"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 739
    :catch_1
    move-exception v1

    .line 740
    .local v1, ex:Ljava/lang/InterruptedException;
    const-string v6, "MTKImageView"

    const-string v7, "gifAnimation:sleeping interrupted"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 748
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :cond_e
    iget v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I

    add-int/lit8 v6, v6, 0x1

    rem-int/2addr v6, v5

    iput v6, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mCurrGifFrame:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2
.end method

.method private openGifStream()V
    .locals 4

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->closeGifStream()V

    .line 303
    iget-boolean v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUriGif:Z

    iget-boolean v2, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    if-ne v1, v2, :cond_0

    .line 304
    const-string v1, "MTKImageView"

    const-string v2, "openGifStream:not correct status!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    if-eqz v1, :cond_1

    .line 310
    :try_start_0
    const-string v1, "MTKImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openGifStream:open new gif strem from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v1, "MTKImageView"

    const-string v2, "Open GIF resource as InputStream failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_1
    :try_start_1
    const-string v1, "MTKImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openGifStream:open new gif strem from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 319
    :catch_1
    move-exception v0

    .line 320
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MTKImageView"

    const-string v2, "Open GIF URI as InputStream failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resizeAndRotateImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "uri"

    .prologue
    .line 479
    const/4 v4, 0x0

    .line 481
    .local v4, finalImage:Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/mediatek/banyan/widget/MTKImageView;->decodeBoundsInfo(Landroid/net/Uri;)Lcom/mediatek/banyan/widget/MTKImageView$Bound;

    move-result-object v0

    .line 482
    .local v0, bound:Lcom/mediatek/banyan/widget/MTKImageView$Bound;
    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->width:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$200(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v6

    .line 483
    .local v6, imageWidth:I
    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->height:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$300(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v5

    .line 485
    .local v5, imageHeight:I
    const/4 v9, 0x1

    .line 486
    .local v9, scaleFactor:I
    invoke-direct {p0, p1}, Lcom/mediatek/banyan/widget/MTKImageView;->decodeDegreeInfo(Landroid/net/Uri;)I

    move-result v1

    .line 488
    .local v1, degree:I
    const/16 v10, 0x5a

    if-eq v1, v10, :cond_0

    const/16 v10, 0x10e

    if-ne v1, v10, :cond_1

    .line 489
    :cond_0
    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->height:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$300(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v6

    .line 490
    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->width:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$200(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v5

    .line 493
    :cond_1
    const/16 v10, 0x280

    if-gt v6, v10, :cond_2

    const/16 v10, 0x1e0

    if-le v5, v10, :cond_4

    .line 494
    :cond_2
    const-string v10, "MTKImageView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Image need resize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_3
    mul-int/lit8 v9, v9, 0x2

    .line 497
    div-int v10, v6, v9

    const/16 v11, 0x280

    if-gt v10, v11, :cond_3

    div-int v10, v5, v9

    const/16 v11, 0x1e0

    if-gt v10, v11, :cond_3

    .line 499
    :cond_4
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 500
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 501
    const/4 v7, 0x0

    .line 503
    .local v7, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v10, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v7

    .line 504
    if-eqz v7, :cond_7

    .line 506
    const/4 v10, 0x0

    :try_start_1
    invoke-static {v7, v10, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 511
    if-nez v4, :cond_6

    .line 513
    const/4 v10, 0x0

    .line 526
    if-eqz v7, :cond_5

    .line 528
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 535
    :cond_5
    :goto_0
    return-object v10

    .line 507
    :catch_0
    move-exception v3

    .line 509
    .local v3, ex:Ljava/lang/OutOfMemoryError;
    const/4 v10, 0x0

    .line 526
    if-eqz v7, :cond_5

    .line 528
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 529
    :catch_1
    move-exception v2

    .line 530
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 529
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ex:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v2

    .line 530
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v11, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 516
    .end local v2           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_4
    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->width:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$200(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v10

    div-int/2addr v10, v9

    if-lez v10, :cond_9

    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->width:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$200(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v10

    div-int/2addr v10, v9

    move v11, v10

    :goto_1
    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->height:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$300(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v10

    div-int/2addr v10, v9

    if-lez v10, :cond_a

    #getter for: Lcom/mediatek/banyan/widget/MTKImageView$Bound;->height:I
    invoke-static {v0}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->access$300(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I

    move-result v10

    div-int/2addr v10, v9

    :goto_2
    const/4 v12, 0x0

    invoke-static {v4, v11, v10, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v4

    .line 521
    :goto_3
    :try_start_5
    invoke-static {v4, v1}, Lcom/mediatek/banyan/widget/MTKImageView;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v4

    .line 526
    :cond_7
    if-eqz v7, :cond_8

    .line 528
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_8
    :goto_4
    move-object v10, v4

    .line 535
    goto :goto_0

    .line 516
    :cond_9
    const/4 v10, 0x1

    move v11, v10

    goto :goto_1

    :cond_a
    const/4 v10, 0x1

    goto :goto_2

    .line 529
    :catch_3
    move-exception v2

    .line 530
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v10, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 523
    .end local v2           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 524
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_7
    const-string v10, "MTKImageView"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 526
    if-eqz v7, :cond_8

    .line 528
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    .line 529
    :catch_5
    move-exception v2

    .line 530
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 526
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    if-eqz v7, :cond_b

    .line 528
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 531
    :cond_b
    :goto_5
    throw v10

    .line 529
    :catch_6
    move-exception v2

    .line 530
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v11, "MTKImageView"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 518
    .end local v2           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v10

    goto :goto_3
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 400
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 401
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 402
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 405
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 406
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 408
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 409
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    move-object p0, v7

    .line 416
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 412
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showFirstGifFrame()V
    .locals 7

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->openGifStream()V

    .line 795
    iget-object v3, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    if-nez v3, :cond_0

    .line 817
    :goto_0
    return-void

    .line 796
    :cond_0
    const/4 v1, 0x0

    .line 797
    .local v1, firstFrame:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 798
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 799
    const/4 v3, 0x1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 801
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mGifStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 806
    iget-boolean v3, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    if-eqz v3, :cond_1

    .line 807
    const-string v3, "MTKImageView"

    const-string v4, "showFirstGifFrame:thread aborted"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "MTKImageView"

    const-string v4, "showFirstGifFrame:OOM when decoding"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 810
    .end local v0           #ex:Ljava/lang/OutOfMemoryError;
    :cond_1
    if-eqz v1, :cond_2

    .line 812
    iget-object v3, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x401

    new-instance v6, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;

    invoke-direct {v6, p0, v1}, Lcom/mediatek/banyan/widget/MTKImageView$GifFrameRunnable;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 815
    :cond_2
    const-string v3, "MTKImageView"

    const-string v4, "showFirstGifFrame:failed to decode first frame!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startAnimationThread()V
    .locals 2

    .prologue
    .line 625
    iget-object v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 634
    :goto_0
    return-void

    .line 629
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAbort:Z

    .line 630
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/banyan/widget/MTKImageView$GifThread;

    invoke-direct {v1, p0}, Lcom/mediatek/banyan/widget/MTKImageView$GifThread;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 631
    .local v0, t:Ljava/lang/Thread;
    const-string v1, "gif-animation"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 633
    iput-object v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mAnimationThread:Ljava/lang/Thread;

    goto :goto_0
.end method


# virtual methods
.method protected initForGif()V
    .locals 0

    .prologue
    .line 285
    iput-object p0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->self:Landroid/widget/ImageView;

    .line 286
    return-void
.end method

.method public setAnimationRunning(Z)V
    .locals 9
    .parameter "flag"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 176
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_4

    .line 178
    if-eqz v2, :cond_1

    instance-of v7, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_1

    move-object v5, v2

    .line 180
    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    .line 181
    .local v5, tempAD:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v7

    if-nez v7, :cond_0

    .line 182
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 251
    .end local v5           #tempAD:Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const/4 v3, 0x0

    .line 187
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 188
    .local v4, parent:Landroid/view/ViewParent;
    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    move-object v6, v4

    .line 190
    check-cast v6, Landroid/view/ViewGroup;

    .line 191
    .local v6, vg:Landroid/view/ViewGroup;
    const-string v7, "storePic"

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .end local v3           #iv:Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 199
    .restart local v3       #iv:Landroid/widget/ImageView;
    if-eqz v3, :cond_3

    instance-of v7, v3, Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    .line 201
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 202
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v7, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_0

    move-object v0, v1

    .line 204
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 205
    .local v0, ad:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0, v0}, Lcom/mediatek/banyan/widget/MTKImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 195
    .end local v0           #ad:Landroid/graphics/drawable/AnimationDrawable;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v6           #vg:Landroid/view/ViewGroup;
    :cond_2
    const-string v7, "test"

    const-string v8, "ViewParent is not a ViewGroup!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    .restart local v6       #vg:Landroid/view/ViewGroup;
    :cond_3
    const-string v7, "com.mediatek.sns"

    const-string v8, "Iv is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v4           #parent:Landroid/view/ViewParent;
    .end local v6           #vg:Landroid/view/ViewGroup;
    :cond_4
    if-eqz v2, :cond_5

    instance-of v7, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_5

    move-object v5, v2

    .line 220
    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    .line 221
    .restart local v5       #tempAD:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 222
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 224
    .end local v5           #tempAD:Landroid/graphics/drawable/AnimationDrawable;
    :cond_5
    const/4 v3, 0x0

    .line 225
    .restart local v3       #iv:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 226
    .restart local v4       #parent:Landroid/view/ViewParent;
    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    move-object v6, v4

    .line 228
    check-cast v6, Landroid/view/ViewGroup;

    .line 229
    .restart local v6       #vg:Landroid/view/ViewGroup;
    const-string v7, "storePic"

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .end local v3           #iv:Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 237
    .restart local v3       #iv:Landroid/widget/ImageView;
    if-eqz v3, :cond_7

    instance-of v7, v3, Landroid/widget/ImageView;

    if-eqz v7, :cond_7

    .line 239
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 240
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {p0, v1}, Lcom/mediatek/banyan/widget/MTKImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 233
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v6           #vg:Landroid/view/ViewGroup;
    :cond_6
    const-string v7, "test"

    const-string v8, "ViewParent is not a ViewGroup!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    .restart local v6       #vg:Landroid/view/ViewGroup;
    :cond_7
    const-string v7, "com.mediatek.sns"

    const-string v8, "Iv is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 167
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z

    if-nez v0, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->abortAnimationThread()V

    .line 613
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 614
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mSetFromGif:Z

    if-nez v0, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->abortAnimationThread()V

    .line 621
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 622
    return-void
.end method

.method public setImageResource(I)V
    .locals 9
    .parameter "resId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 333
    const-string v4, "MTKImageView"

    const-string v5, "setImageResource:abort previous gif animation if any"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->abortAnimationThread()V

    .line 336
    const/4 v2, 0x0

    .line 337
    .local v2, imageStream:Ljava/io/InputStream;
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 338
    .local v0, buffer:[B
    const/4 v3, 0x0

    .line 340
    .local v3, isGifImage:Z
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 341
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v6, v4, :cond_0

    .line 342
    const-string v4, "MTKImageView"

    const-string v5, "can\'t read data from resource inputstream"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v3, 0x0

    .line 350
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    const/4 v2, 0x0

    .line 356
    :goto_1
    if-nez v3, :cond_2

    .line 357
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    :goto_2
    return-void

    .line 344
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_1

    const/4 v4, 0x2

    aget-byte v4, v0, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v5, 0x46

    if-ne v4, v5, :cond_1

    .line 345
    const/4 v3, 0x1

    goto :goto_0

    .line 347
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, e:Ljava/io/IOException;
    const-string v4, "MTKImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 361
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    iput p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResourceId:I

    .line 364
    iput-boolean v7, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUriGif:Z

    .line 365
    iput-boolean v8, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    .line 367
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->startAnimationThread()V

    goto :goto_2
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 11
    .parameter "uri"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 546
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImageURI(uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " //this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->abortAnimationThread()V

    .line 549
    if-nez p1, :cond_0

    .line 550
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImageURI:follow ImageView\'s routin for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 606
    :goto_0
    return-void

    .line 555
    :cond_0
    const/4 v3, 0x0

    .line 556
    .local v3, imageStream:Ljava/io/InputStream;
    const/4 v5, 0x4

    new-array v0, v5, [B

    .line 557
    .local v0, buffer:[B
    const/4 v4, 0x0

    .line 558
    .local v4, isGifImage:Z
    const/4 v2, 0x0

    .line 560
    .local v2, finalImage:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.resource"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 564
    :cond_1
    iget-object v5, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 565
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v10, v5, :cond_2

    .line 566
    const-string v5, "MTKImageView"

    const-string v6, "can\'t read data from uri inputstream"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v4, 0x0

    .line 575
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    const/4 v3, 0x0

    .line 585
    :goto_2
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImageURI:isGifImage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " //this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-nez v4, :cond_6

    .line 588
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setImageURI:follow ImageView\'s routin for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    if-eqz v2, :cond_5

    .line 590
    invoke-super {p0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 568
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    aget-byte v5, v0, v5

    const/16 v6, 0x47

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    aget-byte v5, v0, v5

    const/16 v6, 0x49

    if-ne v5, v6, :cond_3

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    const/16 v6, 0x46

    if-ne v5, v6, :cond_3

    .line 569
    const/4 v4, 0x1

    goto :goto_1

    .line 571
    :cond_3
    const/4 v4, 0x0

    .line 572
    invoke-direct {p0, p1}, Lcom/mediatek/banyan/widget/MTKImageView;->resizeAndRotateImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 578
    :cond_4
    const-string v5, "MTKImageView"

    const-string v6, "Uncoped uri scheme,call ImageView.setImageURI()"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 579
    const/4 v4, 0x0

    goto :goto_2

    .line 581
    :catch_0
    move-exception v1

    .line 582
    .local v1, e:Ljava/io/IOException;
    const-string v5, "MTKImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 592
    .end local v1           #e:Ljava/io/IOException;
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 598
    :cond_6
    const-string v5, "MTKImageView"

    const-string v6, "setImageUri:synchroized lock, start gif animation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iput-object p1, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUri:Landroid/net/Uri;

    .line 602
    iput-boolean v9, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mUriGif:Z

    .line 603
    iput-boolean v8, p0, Lcom/mediatek/banyan/widget/MTKImageView;->mResGif:Z

    .line 605
    invoke-direct {p0}, Lcom/mediatek/banyan/widget/MTKImageView;->startAnimationThread()V

    goto/16 :goto_0
.end method

.method public setOnClickIntent(Ljava/lang/String;)V
    .locals 1
    .parameter "action"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lcom/mediatek/banyan/widget/MTKImageView$1;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/banyan/widget/MTKImageView$1;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/banyan/widget/MTKImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method
