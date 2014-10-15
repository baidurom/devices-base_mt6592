.class public Lcom/mediatek/agifencoder/AGifEncoder;
.super Ljava/lang/Object;
.source "AGifEncoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JAGifEncoder"

.field private static final WORKING_COMPRESS_STORAGE:I = 0x800


# instance fields
.field private encodeSource:[I

.field private fEncodeCount:I

.field private fHeight:I

.field private fStream:Ljava/io/OutputStream;

.field private fWidth:I

.field private final mNativeAGifEncoder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "gifEncoder_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private constructor <init>(III)V
    .locals 3
    .parameter "nativeAGifEncoder"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->encodeSource:[I

    .line 44
    iput-object v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fStream:Ljava/io/OutputStream;

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "native movie creation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput p1, p0, Lcom/mediatek/agifencoder/AGifEncoder;->mNativeAGifEncoder:I

    .line 55
    iput p2, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fWidth:I

    .line 56
    iput p3, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fHeight:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fEncodeCount:I

    .line 58
    const-string v0, "JAGifEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AGifEncoder mNatvie "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agifencoder/AGifEncoder;->mNativeAGifEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " native "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public static createAGifEncoder(II)Lcom/mediatek/agifencoder/AGifEncoder;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 108
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 113
    :cond_1
    invoke-static {p0, p1}, Lcom/mediatek/agifencoder/AGifEncoder;->nativeCreateAGifEncoder(II)Lcom/mediatek/agifencoder/AGifEncoder;

    move-result-object v0

    return-object v0
.end method

.method private static encodeAGifStream(IILjava/io/OutputStream;)Lcom/mediatek/agifencoder/AGifEncoder;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "stream"

    .prologue
    .line 121
    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 126
    :cond_1
    const/16 v0, 0x800

    new-array v0, v0, [B

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/agifencoder/AGifEncoder;->nativeCreateEncoder(IILjava/io/OutputStream;[B)Lcom/mediatek/agifencoder/AGifEncoder;

    move-result-object v0

    return-object v0
.end method

.method private native nativeCloseGif(Ljava/io/OutputStream;[B)Z
.end method

.method private native nativeCloseStream(ILjava/io/OutputStream;[B)Z
.end method

.method private static native nativeCreateAGifEncoder(II)Lcom/mediatek/agifencoder/AGifEncoder;
.end method

.method private static native nativeCreateEncoder(IILjava/io/OutputStream;[B)Lcom/mediatek/agifencoder/AGifEncoder;
.end method

.method private static native nativeDestructor(I)V
.end method

.method private native nativeDuration(I)I
.end method

.method private static native nativeEncodeBitmap(I[ILjava/io/OutputStream;[B)Z
.end method

.method private native nativeEncodeFrameCount()I
.end method

.method private native nativeHeight(I)I
.end method

.method private native nativeSetDuration(II)Z
.end method

.method private static native nativeSetOutputStream(ILjava/io/OutputStream;[B)Z
.end method

.method private native nativeWidth(I)I
.end method

.method private setOutputStream(Ljava/io/OutputStream;)Z
    .locals 3
    .parameter "stream"

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fStream:Ljava/io/OutputStream;

    .line 102
    const-string v0, "JAGifEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputStream, mNatvie "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agifencoder/AGifEncoder;->mNativeAGifEncoder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->mNativeAGifEncoder:I

    iget-object v1, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fStream:Ljava/io/OutputStream;

    const/16 v2, 0x800

    new-array v2, v2, [B

    invoke-static {v0, v1, v2}, Lcom/mediatek/agifencoder/AGifEncoder;->nativeSetOutputStream(ILjava/io/OutputStream;[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public close(Ljava/io/OutputStream;)Z
    .locals 3
    .parameter "stream"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fStream:Ljava/io/OutputStream;

    if-eq v0, p1, :cond_1

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 211
    :cond_1
    iget v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->mNativeAGifEncoder:I

    iget-object v1, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fStream:Ljava/io/OutputStream;

    const/16 v2, 0x800

    new-array v2, v2, [B

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/agifencoder/AGifEncoder;->nativeCloseStream(ILjava/io/OutputStream;[B)Z

    move-result v0

    return v0
.end method

.method public duration()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->mNativeAGifEncoder:I

    invoke-direct {p0, v0}, Lcom/mediatek/agifencoder/AGifEncoder;->nativeDuration(I)I

    move-result v0

    return v0
.end method

.method public encodeBitmap(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)Z
    .locals 9
    .parameter "bitmap"
    .parameter "stream"

    .prologue
    const/4 v2, 0x0

    .line 132
    if-eqz p1, :cond_6

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 138
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 139
    .local v7, height:I
    const/4 v8, 0x0

    .line 141
    .local v8, ret:Z
    const-string v0, "JAGifEncoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encodeBitmap, w:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "stream:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-nez p2, :cond_0

    .line 143
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 145
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v7, :cond_1

    iget v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fWidth:I

    if-ne v3, v0, :cond_1

    iget v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fHeight:I

    if-eq v7, v0, :cond_2

    .line 146
    :cond_1
    const-string v0, "JAGifEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encodeBitmap, creation w:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " h:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "encode bitmap dimention not match with creation!!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_2
    iget v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fEncodeCount:I

    if-nez v0, :cond_5

    .line 151
    iput-object p2, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fStream:Ljava/io/OutputStream;

    .line 163
    :cond_3
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, encodePixels:[I
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 168
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 170
    iget v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->mNativeAGifEncoder:I

    const/16 v2, 0x800

    new-array v2, v2, [B

    invoke-static {v0, v1, p2, v2}, Lcom/mediatek/agifencoder/AGifEncoder;->nativeEncodeBitmap(I[ILjava/io/OutputStream;[B)Z

    move-result v8

    .line 171
    const/4 v0, 0x1

    if-ne v8, v0, :cond_4

    .line 172
    iget v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fEncodeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fEncodeCount:I

    .line 178
    .end local v1           #encodePixels:[I
    .end local v3           #width:I
    .end local v7           #height:I
    .end local v8           #ret:Z
    :cond_4
    :goto_0
    return v8

    .line 152
    .restart local v3       #width:I
    .restart local v7       #height:I
    .restart local v8       #ret:Z
    :cond_5
    iget-object v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->fStream:Ljava/io/OutputStream;

    if-eq v0, p2, :cond_3

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "encode bitmap dimention not match with creation!!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v3           #width:I
    .end local v7           #height:I
    .end local v8           #ret:Z
    :cond_6
    move v8, v2

    .line 178
    goto :goto_0
.end method

.method public encodeFrameCount()I
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/mediatek/agifencoder/AGifEncoder;->nativeEncodeFrameCount()I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 226
    :try_start_0
    iget v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->mNativeAGifEncoder:I

    invoke-static {v0}, Lcom/mediatek/agifencoder/AGifEncoder;->nativeDestructor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 230
    return-void

    .line 228
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public height()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->mNativeAGifEncoder:I

    invoke-direct {p0, v0}, Lcom/mediatek/agifencoder/AGifEncoder;->nativeHeight(I)I

    move-result v0

    return v0
.end method

.method public setDuration(I)Z
    .locals 1
    .parameter "duration"

    .prologue
    .line 68
    iget v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->mNativeAGifEncoder:I

    invoke-direct {p0, v0, p1}, Lcom/mediatek/agifencoder/AGifEncoder;->nativeSetDuration(II)Z

    move-result v0

    return v0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/mediatek/agifencoder/AGifEncoder;->mNativeAGifEncoder:I

    invoke-direct {p0, v0}, Lcom/mediatek/agifencoder/AGifEncoder;->nativeWidth(I)I

    move-result v0

    return v0
.end method
