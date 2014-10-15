.class public Lcom/mediatek/widget/BookmarkItem;
.super Ljava/lang/Object;
.source "BookmarkItem.java"


# instance fields
.field mContent:Landroid/graphics/Bitmap;

.field mInfo:Ljava/lang/String;

.field mResId:I

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "resId"
    .parameter "content"
    .parameter "title"
    .parameter "info"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/widget/BookmarkItem;->mResId:I

    .line 70
    iput p1, p0, Lcom/mediatek/widget/BookmarkItem;->mResId:I

    .line 71
    iput-object p2, p0, Lcom/mediatek/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    .line 72
    iput-object p3, p0, Lcom/mediatek/widget/BookmarkItem;->mTitle:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/mediatek/widget/BookmarkItem;->mInfo:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "resId"
    .parameter "title"
    .parameter "info"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/mediatek/widget/BookmarkItem;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "content"
    .parameter "title"
    .parameter "info"

    .prologue
    .line 62
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mediatek/widget/BookmarkItem;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/widget/BookmarkItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 66
    iget v0, p1, Lcom/mediatek/widget/BookmarkItem;->mResId:I

    iget-object v1, p1, Lcom/mediatek/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/mediatek/widget/BookmarkItem;->mTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/mediatek/widget/BookmarkItem;->mInfo:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mediatek/widget/BookmarkItem;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getContentBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getInfoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkItem;->mInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/widget/BookmarkItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setBitmapResource(I)V
    .locals 0
    .parameter "resourceId"

    .prologue
    .line 91
    iput p1, p0, Lcom/mediatek/widget/BookmarkItem;->mResId:I

    .line 92
    return-void
.end method

.method public setContentBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mediatek/widget/BookmarkItem;->mContent:Landroid/graphics/Bitmap;

    .line 83
    return-void
.end method

.method public setInfoString(Ljava/lang/String;)V
    .locals 0
    .parameter "infoString"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mediatek/widget/BookmarkItem;->mInfo:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setTitleString(Ljava/lang/String;)V
    .locals 0
    .parameter "titleString"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/widget/BookmarkItem;->mTitle:Ljava/lang/String;

    .line 101
    return-void
.end method
