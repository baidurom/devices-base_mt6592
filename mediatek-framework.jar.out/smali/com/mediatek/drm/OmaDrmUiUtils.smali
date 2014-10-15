.class public Lcom/mediatek/drm/OmaDrmUiUtils;
.super Ljava/lang/Object;
.source "OmaDrmUiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;,
        Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final OMA_DRM_FL_ONLY:Z = false

.field private static final TAG:Ljava/lang/String; = "OmaDrmUiUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const-string v1, "drm.forwardlock.only"

    const-string v2, "no"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, drmFLOnly:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/mediatek/drm/OmaDrmUiUtils;->OMA_DRM_FL_ONLY:Z

    .line 74
    return-void

    .line 72
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1112
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    const-string v2, "OmaDrmUiUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCustomAlertDialog : check existing dialog @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    monitor-enter p0

    .line 1116
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1117
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    .line 1119
    .local v0, dialog:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    const-string v2, "OmaDrmUiUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCustomAlertDialog : existing dialog @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1121
    const-string v2, "OmaDrmUiUtils"

    const-string v3, "checkCustomAlertDialog : context match, dismiss it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->dismiss()V

    .line 1126
    .end local v0           #dialog:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    :cond_1
    monitor-exit p0

    .line 1127
    return-void

    .line 1126
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static overlayBitmap(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "client"
    .parameter "res"
    .parameter "bgdBmpId"
    .parameter "frontId"

    .prologue
    .line 189
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, bgdBmp:Landroid/graphics/Bitmap;
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 191
    .local v2, front:Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v0, v2}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayBitmap(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 192
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 194
    const/4 v0, 0x0

    .line 196
    :cond_0
    return-object v1
.end method

.method public static overlayBitmap(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "client"
    .parameter "bgdBmp"
    .parameter "front"

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 155
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 156
    :cond_0
    const-string v8, "OmaDrmUiUtils"

    const-string v9, "overlayBitmap : invalid parameters"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 175
    :goto_0
    return-object v0

    .line 160
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    .local v0, bMutable:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 165
    .local v3, overlayCanvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 166
    invoke-virtual {v3, p1, v11, v11, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 168
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 169
    .local v5, overlayWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 170
    .local v4, overlayHeight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int v1, v7, v5

    .line 171
    .local v1, left:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int v6, v7, v4

    .line 172
    .local v6, top:I
    new-instance v2, Landroid/graphics/Rect;

    add-int v7, v1, v5

    add-int v8, v6, v4

    invoke-direct {v2, v1, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 173
    .local v2, newBounds:Landroid/graphics/Rect;
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 174
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public static overlayBitmapSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "client"
    .parameter "res"
    .parameter "bgdBmpId"
    .parameter "frontId"

    .prologue
    .line 134
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    .local v0, bgdBmp:Landroid/graphics/Bitmap;
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 136
    .local v2, front:Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v0, v2}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayBitmapSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    const/4 v0, 0x0

    .line 141
    :cond_0
    return-object v1
.end method

.method public static overlayBitmapSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "client"
    .parameter "bgdBmp"
    .parameter "front"

    .prologue
    .line 87
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 88
    :cond_0
    const-string v12, "OmaDrmUiUtils"

    const-string v13, "overlayBitmapSkew : invalid parameters"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    .line 119
    :goto_0
    return-object v1

    .line 93
    :cond_1
    const/4 v7, 0x0

    .line 94
    .local v7, offset:I
    invoke-virtual {p0}, Lcom/mediatek/drm/OmaDrmClient;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 95
    .local v2, context:Landroid/content/Context;
    instance-of v12, v2, Landroid/app/Activity;

    if-eqz v12, :cond_3

    .line 96
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 97
    .local v5, metric:Landroid/util/DisplayMetrics;
    check-cast v2, Landroid/app/Activity;

    .end local v2           #context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 98
    iget v3, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 99
    .local v3, densityDpi:I
    const/16 v12, 0x3c0

    div-int v7, v12, v3

    .line 104
    .end local v3           #densityDpi:I
    .end local v5           #metric:Landroid/util/DisplayMetrics;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    add-int/2addr v12, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 107
    .local v1, bMutable:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 109
    .local v8, overlayCanvas:Landroid/graphics/Canvas;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v12

    if-nez v12, :cond_2

    .line 110
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 113
    .local v10, overlayWidth:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 114
    .local v9, overlayHeight:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    sub-int v4, v12, v10

    .line 115
    .local v4, left:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int v11, v12, v9

    .line 116
    .local v11, top:I
    new-instance v6, Landroid/graphics/Rect;

    add-int v12, v4, v10

    add-int v13, v11, v9

    invoke-direct {v6, v4, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    .local v6, newBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 118
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 101
    .end local v1           #bMutable:Landroid/graphics/Bitmap;
    .end local v4           #left:I
    .end local v6           #newBounds:Landroid/graphics/Rect;
    .end local v8           #overlayCanvas:Landroid/graphics/Canvas;
    .end local v9           #overlayHeight:I
    .end local v10           #overlayWidth:I
    .end local v11           #top:I
    .restart local v2       #context:Landroid/content/Context;
    :cond_3
    const-string v12, "OmaDrmUiUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "overlayBitmapSkew : not in Activity context @"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static overlayDrmIcon(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "client"
    .parameter "res"
    .parameter "path"
    .parameter "action"
    .parameter "bgdBmpId"

    .prologue
    .line 294
    invoke-static {p1, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 295
    .local v0, bgdBmp:Landroid/graphics/Bitmap;
    invoke-static {p0, p1, p2, p3, v0}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayDrmIcon(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 296
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 298
    const/4 v0, 0x0

    .line 300
    :cond_0
    return-object v1
.end method

.method public static overlayDrmIcon(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "client"
    .parameter "res"
    .parameter "path"
    .parameter "action"
    .parameter "bgdBmp"

    .prologue
    .line 263
    invoke-virtual {p0, p2}, Lcom/mediatek/drm/OmaDrmClient;->getMethod(Ljava/lang/String;)I

    move-result v2

    .line 264
    .local v2, method:I
    if-nez v2, :cond_0

    .line 265
    const-string v4, "OmaDrmUiUtils"

    const-string v5, "overlayDrmIcon : not drm type, no icon overlayed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local p4
    :goto_0
    return-object p4

    .line 268
    .restart local p4
    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 269
    const-string v4, "OmaDrmUiUtils"

    const-string v5, "overlayDrmIcon : method FL, no icon overlayed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v3

    .line 274
    .local v3, rightsStatus:I
    if-nez v3, :cond_2

    const v1, 0x2020043

    .line 278
    .local v1, lockId:I
    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 279
    .local v0, front:Landroid/graphics/drawable/Drawable;
    invoke-static {p0, p4, v0}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayBitmap(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_0

    .line 274
    .end local v0           #front:Landroid/graphics/drawable/Drawable;
    .end local v1           #lockId:I
    :cond_2
    const v1, 0x2020044

    goto :goto_1
.end method

.method public static overlayDrmIconSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "client"
    .parameter "res"
    .parameter "path"
    .parameter "action"
    .parameter "bgdBmpId"

    .prologue
    .line 242
    invoke-static {p1, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    .local v0, bgdBmp:Landroid/graphics/Bitmap;
    invoke-static {p0, p1, p2, p3, v0}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayDrmIconSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 244
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 246
    const/4 v0, 0x0

    .line 248
    :cond_0
    return-object v1
.end method

.method public static overlayDrmIconSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/res/Resources;Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "client"
    .parameter "res"
    .parameter "path"
    .parameter "action"
    .parameter "bgdBmp"

    .prologue
    .line 211
    invoke-virtual {p0, p2}, Lcom/mediatek/drm/OmaDrmClient;->getMethod(Ljava/lang/String;)I

    move-result v2

    .line 212
    .local v2, method:I
    if-nez v2, :cond_0

    .line 213
    const-string v4, "OmaDrmUiUtils"

    const-string v5, "overlayDrmIconSkew : not drm type, no icon overlayed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local p4
    :goto_0
    return-object p4

    .line 216
    .restart local p4
    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 217
    const-string v4, "OmaDrmUiUtils"

    const-string v5, "overlayDrmIconSkew : method FL, no icon overlayed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v3

    .line 222
    .local v3, rightsStatus:I
    if-nez v3, :cond_2

    const v1, 0x2020043

    .line 226
    .local v1, lockId:I
    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 227
    .local v0, front:Landroid/graphics/drawable/Drawable;
    invoke-static {p0, p4, v0}, Lcom/mediatek/drm/OmaDrmUiUtils;->overlayBitmapSkew(Lcom/mediatek/drm/OmaDrmClient;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_0

    .line 222
    .end local v0           #front:Landroid/graphics/drawable/Drawable;
    .end local v1           #lockId:I
    :cond_2
    const v1, 0x2020044

    goto :goto_1
.end method

.method public static showConsumeDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "listener"
    .parameter "dismissListener"

    .prologue
    .line 375
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showConsumeDialog @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    instance-of v3, p0, Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 378
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "showConsumeDialog : not an Acitivty context"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v2, 0x0

    .line 402
    :cond_0
    :goto_0
    return-object v2

    .line 382
    :cond_1
    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p0}, Lcom/mediatek/drm/OmaDrmUiUtils;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 383
    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p0}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    .line 384
    .local v2, result:Landroid/app/Dialog;
    if-nez v2, :cond_0

    .line 388
    new-instance v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 389
    .local v0, dialog:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 390
    .local v1, res:Landroid/content/res/Resources;
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 393
    const/4 v3, -0x2

    const/high16 v4, 0x104

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 396
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setIcon(I)V

    .line 397
    const v3, 0x20500df

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 398
    const v3, 0x20500e0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 399
    invoke-virtual {v0, p2}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 400
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    move-object v2, v0

    .line 402
    goto :goto_0
.end method

.method public static showConsumeRights(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "client"
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 792
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showConsumeRights @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 795
    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    .line 796
    .local v2, result:Landroid/app/Dialog;
    if-eqz v2, :cond_0

    .line 842
    .end local v2           #result:Landroid/app/Dialog;
    :goto_0
    return-object v2

    .line 800
    .restart local v2       #result:Landroid/app/Dialog;
    :cond_0
    new-instance v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 801
    .local v0, dialog:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 803
    .local v1, res:Landroid/content/res/Resources;
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mediatek/drm/OmaDrmUiUtils$5;

    invoke-direct {v5, p2}, Lcom/mediatek/drm/OmaDrmUiUtils$5;-><init>(Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 815
    const/4 v3, -0x2

    const/high16 v4, 0x104

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mediatek/drm/OmaDrmUiUtils$6;

    invoke-direct {v5, p2}, Lcom/mediatek/drm/OmaDrmUiUtils$6;-><init>(Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 826
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setIcon(I)V

    .line 827
    const v3, 0x20500df

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 828
    const v3, 0x20500e0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 830
    new-instance v3, Lcom/mediatek/drm/OmaDrmUiUtils$7;

    invoke-direct {v3, p2}, Lcom/mediatek/drm/OmaDrmUiUtils$7;-><init>(Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)V

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 840
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    move-object v2, v0

    .line 842
    goto :goto_0
.end method

.method public static showProtectionInfoDialog(Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 413
    if-eqz p1, :cond_0

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p1, :cond_1

    .line 414
    :cond_0
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "showProtectionInfoDialog : Given uri is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_0
    return-object v2

    .line 418
    :cond_1
    const/4 v1, 0x0

    .line 420
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Lcom/mediatek/drm/OmaDrmUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 425
    invoke-static {p0, v1}, Lcom/mediatek/drm/OmaDrmUiUtils;->showProtectionInfoDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException @showProtectionInfoDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showProtectionInfoDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 34
    .parameter "context"
    .parameter "path"

    .prologue
    .line 436
    const-string v30, "OmaDrmUiUtils"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "showProtectionInfoDialog : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " @"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    if-eqz p1, :cond_0

    const-string v30, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 439
    :cond_0
    const-string v30, "OmaDrmUiUtils"

    const-string v31, "showProtectionInfoDialog : Given path is not valid"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/16 v20, 0x0

    .line 633
    :cond_1
    :goto_0
    return-object v20

    .line 443
    :cond_2
    sget-object v30, Lcom/mediatek/drm/OmaDrmClient;->sProtectionInfoDialogQueue:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v20

    .line 444
    .local v20, result:Landroid/app/Dialog;
    if-nez v20, :cond_1

    .line 448
    const v30, 0x2070008

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 451
    .local v24, scrollView:Landroid/view/View;
    const v30, 0x2100013

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 454
    .local v14, fileNameView:Landroid/widget/TextView;
    if-nez v14, :cond_3

    .line 455
    const-string v30, "OmaDrmUiUtils"

    const-string v31, "showProtectionInfoDialog : the TextView: fileNameView is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/16 v20, 0x0

    goto :goto_0

    .line 459
    :cond_3
    const-string v30, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v25

    .line 460
    .local v25, start:I
    const-string v30, "."

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 461
    .local v9, end:I
    add-int/lit8 v30, v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 462
    .local v13, fileNameStr:Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    const v30, 0x2100014

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 467
    .local v17, protectionInfoStatusView:Landroid/widget/TextView;
    if-nez v17, :cond_4

    .line 468
    const-string v30, "OmaDrmUiUtils"

    const-string v31, "showProtectionInfoDialog : the TextView: protectionInfoStatusView is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/16 v20, 0x0

    goto :goto_0

    .line 472
    :cond_4
    new-instance v6, Lcom/mediatek/drm/OmaDrmClient;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    .line 473
    .local v6, client:Lcom/mediatek/drm/OmaDrmClient;
    const/16 v30, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Lcom/mediatek/drm/OmaDrmClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v23

    .line 474
    .local v23, rightsStatus:I
    if-nez v23, :cond_5

    const v5, 0x20500ce

    .line 477
    .local v5, canForward:I
    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 479
    const v30, 0x2100015

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 482
    .local v4, beginView:Landroid/widget/TextView;
    if-nez v4, :cond_6

    .line 483
    const-string v30, "OmaDrmUiUtils"

    const-string v31, "showProtectionInfoDialog : the TextView: beginView is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 474
    .end local v4           #beginView:Landroid/widget/TextView;
    .end local v5           #canForward:I
    :cond_5
    const v5, 0x20500cf

    goto :goto_1

    .line 486
    .restart local v4       #beginView:Landroid/widget/TextView;
    .restart local v5       #canForward:I
    :cond_6
    const v30, 0x2100017

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 489
    .local v12, endView:Landroid/widget/TextView;
    if-nez v12, :cond_7

    .line 490
    const-string v30, "OmaDrmUiUtils"

    const-string v31, "showProtectionInfoDialog : the TextView: endView is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 493
    :cond_7
    const v30, 0x2100019

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 496
    .local v28, useLeftView:Landroid/widget/TextView;
    if-nez v28, :cond_8

    .line 497
    const-string v30, "OmaDrmUiUtils"

    const-string v31, "showProtectionInfoDialog : the TextView: useLeftView is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 500
    :cond_8
    const v30, 0x2100016

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 503
    .local v3, beginValueView:Landroid/widget/TextView;
    if-nez v3, :cond_9

    .line 504
    const-string v30, "OmaDrmUiUtils"

    const-string v31, "showProtectionInfoDialog : the TextView: beginValueView is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 507
    :cond_9
    const v30, 0x2100018

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 510
    .local v11, endValueView:Landroid/widget/TextView;
    if-nez v11, :cond_a

    .line 511
    const-string v30, "OmaDrmUiUtils"

    const-string v31, "showProtectionInfoDialog : the TextView: endValueView is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 514
    :cond_a
    const v30, 0x210001a

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 517
    .local v27, useLeftValueView:Landroid/widget/TextView;
    if-nez v27, :cond_b

    .line 518
    const-string v30, "OmaDrmUiUtils"

    const-string v31, "showProtectionInfoDialog : the TextView: useLeftValueView is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 522
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/mediatek/drm/OmaDrmClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 523
    .local v16, mime:Ljava/lang/String;
    if-nez v16, :cond_c

    .line 524
    const-string v30, "OmaDrmUiUtils"

    const-string v31, "showProtectionInfoDialog : failed to get the original mime type"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 528
    :cond_c
    new-instance v8, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v30, Lcom/mediatek/drm/OmaDrmClient;->sProtectionInfoDialogQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v8, v0, v1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 530
    .local v8, dialog:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 531
    .local v19, res:Landroid/content/res/Resources;
    invoke-static/range {v16 .. v16}, Lcom/mediatek/drm/OmaDrmUtils;->getMediaActionType(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Lcom/mediatek/drm/OmaDrmClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v29

    .line 533
    .local v29, values:Landroid/content/ContentValues;
    if-eqz v29, :cond_d

    invoke-virtual/range {v29 .. v29}, Landroid/content/ContentValues;->size()I

    move-result v30

    if-nez v30, :cond_10

    .line 534
    :cond_d
    const v30, 0x20500d1

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 535
    const-string v30, ""

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    const-string v30, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/mediatek/drm/OmaDrmClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v7

    .line 539
    .local v7, cv:Landroid/content/ContentValues;
    const/16 v21, 0x0

    .line 540
    .local v21, rightsIssuer:Ljava/lang/String;
    if-eqz v7, :cond_e

    const-string v30, "drm_rights_issuer"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 541
    const-string v30, "drm_rights_issuer"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 545
    :cond_e
    move-object/from16 v22, v21

    .line 546
    .local v22, rightsIssuerFinal:Ljava/lang/String;
    if-eqz v22, :cond_f

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_f

    .line 547
    const/16 v30, -0x1

    const v31, 0x20500d5

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    new-instance v32, Lcom/mediatek/drm/OmaDrmUiUtils$1;

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/drm/OmaDrmUiUtils$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    move/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v8, v0, v1, v2}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 621
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v21           #rightsIssuer:Ljava/lang/String;
    .end local v22           #rightsIssuerFinal:Ljava/lang/String;
    :cond_f
    :goto_2
    const/16 v30, -0x3

    const v31, 0x104000a

    move-object/from16 v0, v19

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    new-instance v32, Lcom/mediatek/drm/OmaDrmUiUtils$2;

    invoke-direct/range {v32 .. v32}, Lcom/mediatek/drm/OmaDrmUiUtils$2;-><init>()V

    move/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v8, v0, v1, v2}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 629
    const v30, 0x2050062

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 630
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setView(Landroid/view/View;)V

    .line 631
    invoke-virtual {v8}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    move-object/from16 v20, v8

    .line 633
    goto/16 :goto_0

    .line 560
    :cond_10
    const-string v30, "license_start_time"

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_13

    .line 561
    const-string v30, "license_start_time"

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    .line 563
    .local v26, startL:Ljava/lang/Long;
    if-nez v26, :cond_11

    .line 564
    const-string v30, "OmaDrmUiUtils"

    const-string v31, "showProtectionInfoDialog : startL is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 567
    :cond_11
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    const-wide/16 v32, -0x1

    cmp-long v30, v30, v32

    if-nez v30, :cond_12

    .line 568
    const v30, 0x20500d0

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 577
    .end local v26           #startL:Ljava/lang/Long;
    :goto_3
    const-string v30, "license_expiry_time"

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_16

    .line 578
    const-string v30, "license_expiry_time"

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 580
    .local v10, endL:Ljava/lang/Long;
    if-nez v10, :cond_14

    .line 581
    const-string v30, "OmaDrmUiUtils"

    const-string v31, "showProtectionInfoDialog : endL is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 571
    .end local v10           #endL:Ljava/lang/Long;
    .restart local v26       #startL:Ljava/lang/Long;
    :cond_12
    invoke-static/range {v26 .. v26}, Lcom/mediatek/drm/OmaDrmUiUtils;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 574
    .end local v26           #startL:Ljava/lang/Long;
    :cond_13
    const v30, 0x20500d0

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 584
    .restart local v10       #endL:Ljava/lang/Long;
    :cond_14
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    const-wide/16 v32, -0x1

    cmp-long v30, v30, v32

    if-nez v30, :cond_15

    .line 585
    const v30, 0x20500d0

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    .line 594
    .end local v10           #endL:Ljava/lang/Long;
    :goto_4
    const-string v30, "remaining_repeat_count"

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_1b

    const-string v30, "max_repeat_count"

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_1b

    .line 596
    const-string v30, "remaining_repeat_count"

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    .line 598
    .local v18, remainCount:Ljava/lang/Long;
    if-nez v18, :cond_17

    .line 599
    const-string v30, "OmaDrmUiUtils"

    const-string v31, "showProtectionInfoDialog : remainCount is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 588
    .end local v18           #remainCount:Ljava/lang/Long;
    .restart local v10       #endL:Ljava/lang/Long;
    :cond_15
    invoke-static {v10}, Lcom/mediatek/drm/OmaDrmUiUtils;->toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 591
    .end local v10           #endL:Ljava/lang/Long;
    :cond_16
    const v30, 0x20500d0

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 602
    .restart local v18       #remainCount:Ljava/lang/Long;
    :cond_17
    const-string v30, "max_repeat_count"

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    .line 604
    .local v15, maxCount:Ljava/lang/Long;
    if-nez v15, :cond_18

    .line 605
    const-string v30, "OmaDrmUiUtils"

    const-string v31, "showProtectionInfoDialog() : maxCount is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 608
    :cond_18
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    const-wide/16 v32, -0x1

    cmp-long v30, v30, v32

    if-eqz v30, :cond_19

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    const-wide/16 v32, -0x1

    cmp-long v30, v30, v32

    if-nez v30, :cond_1a

    .line 609
    :cond_19
    const v30, 0x20500d0

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 612
    :cond_1a
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v15}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 616
    .end local v15           #maxCount:Ljava/lang/Long;
    .end local v18           #remainCount:Ljava/lang/Long;
    :cond_1b
    const v30, 0x20500d0

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2
.end method

.method public static showRefreshLicense(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Landroid/net/Uri;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "client"
    .parameter "context"
    .parameter "uri"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 894
    sget-boolean v3, Lcom/mediatek/drm/OmaDrmUiUtils;->OMA_DRM_FL_ONLY:Z

    if-eqz v3, :cond_0

    .line 895
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "showRefreshLicense : Forward-lock-only is set"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :goto_0
    return-object v2

    .line 898
    :cond_0
    if-eqz p2, :cond_1

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p2, :cond_2

    .line 899
    :cond_1
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "showRefreshLicense : invalid uri"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 902
    :cond_2
    if-eqz p1, :cond_3

    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_4

    .line 903
    :cond_3
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "showRefreshLicense : invalid context or not an Activity context"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 907
    :cond_4
    const/4 v1, 0x0

    .line 909
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-static {p1, p2}, Lcom/mediatek/drm/OmaDrmUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 914
    invoke-static {p0, p1, v1, p3}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicense(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumenException @showRefreshLicense : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showRefreshLicense(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
    .locals 11
    .parameter "client"
    .parameter "context"
    .parameter "path"
    .parameter "listener"

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 923
    const-string v7, "OmaDrmUiUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showRefreshLicense @"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    sget-boolean v7, Lcom/mediatek/drm/OmaDrmUiUtils;->OMA_DRM_FL_ONLY:Z

    if-eqz v7, :cond_1

    .line 926
    const-string v7, "OmaDrmUiUtils"

    const-string v8, "showRefreshLicense : Forward-lock-only is set"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 1008
    :cond_0
    :goto_0
    return-object v4

    .line 929
    :cond_1
    if-eqz p2, :cond_2

    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 930
    :cond_2
    const-string v7, "OmaDrmUiUtils"

    const-string v8, "showRefreshLicense : invalid path"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 931
    goto :goto_0

    .line 933
    :cond_3
    if-eqz p1, :cond_4

    instance-of v7, p1, Landroid/app/Activity;

    if-nez v7, :cond_5

    .line 934
    :cond_4
    const-string v7, "OmaDrmUiUtils"

    const-string v8, "showRefreshLicense : invalid context or not an Activity context"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 935
    goto :goto_0

    .line 938
    :cond_5
    sget-object v7, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v7, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 939
    sget-object v7, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v7, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v4

    .line 940
    .local v4, result:Landroid/app/Dialog;
    if-nez v4, :cond_0

    .line 945
    invoke-virtual {p0, p2}, Lcom/mediatek/drm/OmaDrmClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 946
    .local v0, cv:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 947
    .local v5, rightsIssuer:Ljava/lang/String;
    if-eqz v0, :cond_6

    const-string v7, "drm_rights_issuer"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 948
    const-string v7, "drm_rights_issuer"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 952
    :cond_6
    if-eqz v5, :cond_7

    const-string v7, "http"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 953
    :cond_7
    const v7, 0x20500d8

    invoke-static {p1, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 956
    if-eqz p3, :cond_8

    .line 957
    const/4 v7, 0x2

    invoke-interface {p3, v7}, Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;->onOperated(I)V

    :cond_8
    move-object v4, v1

    .line 959
    goto :goto_0

    .line 963
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 964
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x20500d7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 968
    .local v2, message:Ljava/lang/String;
    move-object v6, v5

    .line 970
    .local v6, rightsIssuerFinal:Ljava/lang/String;
    new-instance v1, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v7, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v1, p1, v7}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 972
    .local v1, dialog:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    const/4 v7, -0x1

    const v8, 0x20500d5

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/mediatek/drm/OmaDrmUiUtils$10;

    invoke-direct {v9, v6, p1}, Lcom/mediatek/drm/OmaDrmUiUtils$10;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v7, v8, v9}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 984
    const/4 v7, -0x2

    const/high16 v8, 0x104

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/mediatek/drm/OmaDrmUiUtils$11;

    invoke-direct {v9}, Lcom/mediatek/drm/OmaDrmUiUtils$11;-><init>()V

    invoke-virtual {v1, v7, v8, v9}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 992
    const v7, 0x108009b

    invoke-virtual {v1, v7}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setIcon(I)V

    .line 993
    const v7, 0x20500d6

    invoke-virtual {v1, v7}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 994
    invoke-virtual {v1, v2}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 996
    new-instance v7, Lcom/mediatek/drm/OmaDrmUiUtils$12;

    invoke-direct {v7, p3}, Lcom/mediatek/drm/OmaDrmUiUtils$12;-><init>(Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)V

    invoke-virtual {v1, v7}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1006
    invoke-virtual {v1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    move-object v4, v1

    .line 1008
    goto/16 :goto_0
.end method

.method public static showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Landroid/net/Uri;)Landroid/app/Dialog;
    .locals 1
    .parameter "client"
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 769
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Landroid/net/Uri;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Landroid/net/Uri;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "client"
    .parameter "context"
    .parameter "uri"
    .parameter "dismissListener"

    .prologue
    const/4 v2, 0x0

    .line 647
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showRefreshLicenseDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    sget-boolean v3, Lcom/mediatek/drm/OmaDrmUiUtils;->OMA_DRM_FL_ONLY:Z

    if-eqz v3, :cond_0

    .line 650
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "showRefreshLicenseDialog : Forward-lock-only is set."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_0
    return-object v2

    .line 653
    :cond_0
    if-eqz p2, :cond_1

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v3, p2, :cond_2

    .line 654
    :cond_1
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "showRefreshLicenseDialog : Given uri is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 657
    :cond_2
    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_3

    .line 658
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "showRefreshLicenseDialog : not an Activity context"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 662
    :cond_3
    const/4 v1, 0x0

    .line 664
    .local v1, path:Ljava/lang/String;
    :try_start_0
    invoke-static {p1, p2}, Lcom/mediatek/drm/OmaDrmUtils;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 669
    invoke-static {p0, p1, v1, p3}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException @showRefreshLicenseDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1
    .parameter "client"
    .parameter "context"
    .parameter "path"

    .prologue
    .line 782
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/drm/OmaDrmUiUtils;->showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static showRefreshLicenseDialog(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 11
    .parameter "client"
    .parameter "context"
    .parameter "path"
    .parameter "dismissListener"

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 684
    const-string v7, "OmaDrmUiUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showRefreshLicenseDialog : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " @"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    sget-boolean v7, Lcom/mediatek/drm/OmaDrmUiUtils;->OMA_DRM_FL_ONLY:Z

    if-eqz v7, :cond_1

    .line 687
    const-string v7, "OmaDrmUiUtils"

    const-string v8, "showRefreshLicenseDialog : Forward-lock-only is set."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 756
    :cond_0
    :goto_0
    return-object v4

    .line 690
    :cond_1
    if-eqz p2, :cond_2

    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 691
    :cond_2
    const-string v7, "OmaDrmUiUtils"

    const-string v8, "showRefreshLicenseDialog : Given path is not valid"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 692
    goto :goto_0

    .line 694
    :cond_3
    instance-of v7, p1, Landroid/app/Activity;

    if-nez v7, :cond_4

    .line 695
    const-string v7, "OmaDrmUiUtils"

    const-string v8, "showRefreshLicenseDialog : not an Activity context"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 696
    goto :goto_0

    .line 699
    :cond_4
    sget-object v7, Lcom/mediatek/drm/OmaDrmClient;->sConsumeDialogQueue:Ljava/util/ArrayList;

    invoke-static {v7, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->checkCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 700
    sget-object v7, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-static {v7, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v4

    .line 701
    .local v4, result:Landroid/app/Dialog;
    if-nez v4, :cond_0

    .line 706
    invoke-virtual {p0, p2}, Lcom/mediatek/drm/OmaDrmClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 707
    .local v0, cv:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 708
    .local v5, rightsIssuer:Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v7, "drm_rights_issuer"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 709
    const-string v7, "drm_rights_issuer"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 713
    :cond_5
    if-eqz v5, :cond_6

    const-string v7, "http"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 714
    :cond_6
    const v7, 0x20500d8

    invoke-static {p1, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    move-object v4, v1

    .line 717
    goto :goto_0

    .line 721
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 722
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x20500d7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 726
    .local v2, message:Ljava/lang/String;
    move-object v6, v5

    .line 728
    .local v6, rightsIssuerFinal:Ljava/lang/String;
    new-instance v1, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v7, Lcom/mediatek/drm/OmaDrmClient;->sLicenseDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v1, p1, v7}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 730
    .local v1, dialog:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    const/4 v7, -0x1

    const v8, 0x20500d5

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/mediatek/drm/OmaDrmUiUtils$3;

    invoke-direct {v9, v6, p1}, Lcom/mediatek/drm/OmaDrmUiUtils$3;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v7, v8, v9}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 742
    const/4 v7, -0x2

    const/high16 v8, 0x104

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/mediatek/drm/OmaDrmUiUtils$4;

    invoke-direct {v9}, Lcom/mediatek/drm/OmaDrmUiUtils$4;-><init>()V

    invoke-virtual {v1, v7, v8, v9}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 750
    const v7, 0x108009b

    invoke-virtual {v1, v7}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setIcon(I)V

    .line 751
    const v7, 0x20500d6

    invoke-virtual {v1, v7}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 752
    invoke-virtual {v1, v2}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 753
    invoke-virtual {v1, p3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 754
    invoke-virtual {v1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    move-object v4, v1

    .line 756
    goto/16 :goto_0
.end method

.method public static showSecureTimerInvalid(Lcom/mediatek/drm/OmaDrmClient;Landroid/content/Context;Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "client"
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 851
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSecureTimerInvalid @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    .line 854
    .local v2, result:Landroid/app/Dialog;
    if-eqz v2, :cond_0

    .line 885
    .end local v2           #result:Landroid/app/Dialog;
    :goto_0
    return-object v2

    .line 858
    .restart local v2       #result:Landroid/app/Dialog;
    :cond_0
    new-instance v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 859
    .local v0, dialog:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 861
    .local v1, res:Landroid/content/res/Resources;
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mediatek/drm/OmaDrmUiUtils$8;

    invoke-direct {v5}, Lcom/mediatek/drm/OmaDrmUiUtils$8;-><init>()V

    invoke-virtual {v0, v3, v4, v5}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 869
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setIcon(I)V

    .line 870
    const v3, 0x20500dd

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 871
    const v3, 0x20500de

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 873
    new-instance v3, Lcom/mediatek/drm/OmaDrmUiUtils$9;

    invoke-direct {v3, p2}, Lcom/mediatek/drm/OmaDrmUiUtils$9;-><init>(Lcom/mediatek/drm/OmaDrmUiUtils$DrmOperationListener;)V

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 883
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    move-object v2, v0

    .line 885
    goto :goto_0
.end method

.method public static showSecureTimerInvalidDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "clickListener"
    .parameter "dismissListener"

    .prologue
    .line 337
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSecureTimerInvalidDialog @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    instance-of v3, p0, Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 340
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "showSecureTimerInvalidDialog : not an Acitivty context"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v2, 0x0

    .line 360
    :cond_0
    :goto_0
    return-object v2

    .line 344
    :cond_1
    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-static {v3, p0}, Lcom/mediatek/drm/OmaDrmUiUtils;->validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v2

    .line 345
    .local v2, result:Landroid/app/Dialog;
    if-nez v2, :cond_0

    .line 349
    new-instance v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    sget-object v3, Lcom/mediatek/drm/OmaDrmClient;->sSecureTimerDialogQueue:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 350
    .local v0, dialog:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 351
    .local v1, res:Landroid/content/res/Resources;
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p1}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 354
    const v3, 0x108009b

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setIcon(I)V

    .line 355
    const v3, 0x20500dd

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setTitle(I)V

    .line 356
    const v3, 0x20500de

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {v0, p2}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 358
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->show()V

    move-object v2, v0

    .line 360
    goto :goto_0
.end method

.method private static toDateTimeString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 7
    .parameter "sec"

    .prologue
    .line 1018
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1019
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 1020
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1021
    .local v2, str:Ljava/lang/String;
    return-object v2
.end method

.method private static validateCustomAlertDialog(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;
    .locals 6
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .prologue
    .line 1092
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "validateCustomAlertDialog : validate existing dialog @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const/4 v2, 0x0

    .line 1096
    .local v2, result:Landroid/app/Dialog;
    monitor-enter p0

    .line 1097
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1098
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1099
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;

    .line 1100
    .local v0, dialog:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    const-string v3, "OmaDrmUiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "validateCustomAlertDialog : existing dialog @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;->getCreatorContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1102
    const-string v3, "OmaDrmUiUtils"

    const-string v4, "validateCustomAlertDialog : context match, use this one"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    move-object v2, v0

    .line 1107
    .end local v0           #dialog:Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;
    :cond_1
    monitor-exit p0

    .line 1108
    return-object v2

    .line 1107
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/drm/OmaDrmUiUtils$CustomAlertDialog;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
