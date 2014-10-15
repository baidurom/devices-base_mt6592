.class public Lcom/mediatek/drm/OmaDrmUtils;
.super Ljava/lang/Object;
.source "OmaDrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;,
        Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;,
        Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;
    }
.end annotation


# static fields
.field private static final CID_URIS:[Landroid/net/Uri; = null

#the value of this static final field might be set in the static constructor
.field private static final OMA_DRM_EXTEND_SUFFIX:Z = false

.field private static final TAG:Ljava/lang/String; = "OmaDrmUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    const/4 v3, 0x6

    new-array v3, v3, [Landroid/net/Uri;

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v4, v3, v1

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v4, v3, v2

    const/4 v4, 0x2

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v5, v3, v4

    sput-object v3, Lcom/mediatek/drm/OmaDrmUtils;->CID_URIS:[Landroid/net/Uri;

    .line 70
    const-string v3, "drm.extend.suffix"

    const-string v4, "no"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, drmExtendSuffix:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "yes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/mediatek/drm/OmaDrmUtils;->OMA_DRM_EXTEND_SUFFIX:Z

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    return-void
.end method

.method static convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 338
    const-string v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertUriToPath : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " @"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v8, 0x0

    .line 341
    .local v8, path:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 342
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 343
    .local v10, scheme:Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 369
    .end local v10           #scheme:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertUriToPath : >"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-object v8

    .line 345
    .restart local v10       #scheme:Ljava/lang/String;
    :cond_2
    const-string v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 346
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 347
    :cond_3
    const-string v0, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 348
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 349
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 351
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 352
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 353
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri could not be found in media store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :catch_0
    move-exception v7

    .line 358
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 361
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 355
    :cond_6
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 356
    .local v9, pathIndex:I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 360
    if-eqz v6, :cond_1

    .line 361
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 365
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #pathIndex:I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given Uri scheme is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDrmProfile(Landroid/content/Context;Landroid/net/Uri;Lcom/mediatek/drm/OmaDrmClient;)Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;
    .locals 13
    .parameter "context"
    .parameter "uri"
    .parameter "client"

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 223
    const-string v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrmProfile : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 226
    :cond_0
    const-string v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmProfile : invalid parameters client="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " context="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " uri="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 230
    :cond_1
    const/4 v7, 0x0

    .line 231
    .local v7, isDrm:Z
    const/4 v8, 0x0

    .line 233
    .local v8, method:I
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 234
    .local v10, scheme:Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 236
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "is_drm"

    aput-object v0, v2, v11

    const-string v0, "drm_method"

    aput-object v0, v2, v12

    .line 242
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 243
    .local v6, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 244
    if-eqz v6, :cond_3

    .line 245
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    const-string v0, "1"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 247
    if-eqz v7, :cond_4

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 249
    :cond_2
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 267
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    :goto_1
    new-instance v9, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;

    invoke-direct {v9, v8, v7}, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;-><init>(IZ)V

    .line 268
    .local v9, profile:Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;
    const-string v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDrmProfile : isDrm="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->isDrm()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " method="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->getMethod()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-object v9

    .end local v9           #profile:Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_4
    move v8, v11

    .line 247
    goto :goto_0

    .line 251
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_5
    const-string v0, "file"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/drm/OmaDrmUtils;->isDrmSuffix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 254
    const/4 v7, 0x1

    .line 255
    invoke-virtual {p2, p1}, Lcom/mediatek/drm/OmaDrmClient;->getMethod(Landroid/net/Uri;)I

    move-result v8

    goto :goto_1

    .line 257
    :cond_6
    const/4 v7, 0x0

    .line 260
    sget-boolean v0, Lcom/mediatek/drm/OmaDrmUtils;->OMA_DRM_EXTEND_SUFFIX:Z

    if-eqz v0, :cond_3

    .line 261
    invoke-virtual {p2, p1}, Lcom/mediatek/drm/OmaDrmClient;->getMethod(Landroid/net/Uri;)I

    move-result v8

    .line 262
    if-eqz v8, :cond_7

    move v7, v12

    :goto_2
    goto :goto_1

    :cond_7
    move v7, v11

    goto :goto_2
.end method

.method public static getDrmStorageFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "name"
    .parameter "mimeType"

    .prologue
    .line 390
    const-string v4, "OmaDrmUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrmStorageFileName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 393
    .local v0, index:I
    const/4 v1, 0x0

    .line 394
    .local v1, raw:Ljava/lang/String;
    const/4 v3, 0x0

    .line 395
    .local v3, suffix:Ljava/lang/String;
    const/4 v4, -0x1

    if-eq v4, v0, :cond_1

    .line 396
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 397
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 403
    :goto_0
    move-object v2, p0

    .line 404
    .local v2, result:Ljava/lang/String;
    const-string v4, ".dm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dcf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 418
    :cond_0
    :goto_1
    return-object v2

    .line 399
    .end local v2           #result:Ljava/lang/String;
    :cond_1
    move-object v1, p0

    .line 400
    const-string v3, ""

    goto :goto_0

    .line 406
    .restart local v2       #result:Ljava/lang/String;
    :cond_2
    const-string v4, ".dcf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 407
    move-object v2, p0

    goto :goto_1

    .line 410
    :cond_3
    const-string v4, "application/vnd.oma.drm.message"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "application/vnd.oma.drm.content"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 414
    :cond_4
    sget-boolean v4, Lcom/mediatek/drm/OmaDrmUtils;->OMA_DRM_EXTEND_SUFFIX:Z

    if-eqz v4, :cond_5

    move-object v2, p0

    :goto_2
    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dcf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public static getMediaActionType(Ljava/lang/String;)I
    .locals 2
    .parameter "mime"

    .prologue
    const/4 v0, 0x1

    .line 84
    const-string v1, "image/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    const/4 v0, 0x7

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    const-string v1, "audio/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "video/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static getMsgFromInfoStatus(Landroid/drm/DrmInfoStatus;)Ljava/lang/String;
    .locals 6
    .parameter "status"

    .prologue
    .line 321
    iget-object v3, p0, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v3}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v0

    .line 322
    .local v0, data:[B
    const-string v2, ""

    .line 323
    .local v2, message:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 326
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2           #message:Ljava/lang/String;
    const-string v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .restart local v2       #message:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v3, "OmaDrmUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMsgFromInfoStatus : >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-object v2

    .line 327
    .end local v2           #message:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 328
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "OmaDrmUtils"

    const-string v4, "Unsupported encoding type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v2, ""

    .restart local v2       #message:Ljava/lang/String;
    goto :goto_0
.end method

.method public static isDrmDcfFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "mimeType"
    .parameter "name"

    .prologue
    .line 484
    const-string v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDrmDcfFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    if-eqz p0, :cond_0

    .line 486
    const-string v0, "application/vnd.oma.drm.content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 491
    :goto_0
    return v0

    .line 488
    :cond_0
    if-eqz p1, :cond_1

    .line 489
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 491
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrmFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "mimeType"

    .prologue
    .line 428
    const-string v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDrmFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    if-eqz p0, :cond_1

    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.oma.drm.content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrmMsgFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "mimeType"
    .parameter "name"

    .prologue
    .line 463
    const-string v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDrmMsgFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    if-eqz p0, :cond_0

    .line 465
    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 470
    :goto_0
    return v0

    .line 467
    :cond_0
    if-eqz p1, :cond_1

    .line 468
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 470
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrmRightsFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "mimeType"
    .parameter "name"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 505
    const-string v2, "OmaDrmUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDrmRightsFile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    if-eqz p0, :cond_2

    .line 507
    const-string v2, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 514
    :cond_1
    :goto_0
    return v0

    .line 510
    :cond_2
    if-eqz p1, :cond_1

    .line 511
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".dr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".drc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isDrmSuffix(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 446
    const-string v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDrmSuffix : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static rescanDrmMediaFiles(Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;)I
    .locals 16
    .parameter "context"
    .parameter "drmContentUri"
    .parameter "callback"

    .prologue
    .line 104
    const-string v3, "OmaDrmUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "rescanDrmMediaFiles : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " with callback "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 107
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v4, "drm_content_uri=?"

    .line 108
    .local v4, where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v5, v3

    .line 109
    .local v5, whereArgs:[Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v11, pathArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/mediatek/drm/OmaDrmUtils;->CID_URIS:[Landroid/net/Uri;

    array-length v10, v3

    .line 111
    .local v10, length:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_2

    .line 112
    sget-object v3, Lcom/mediatek/drm/OmaDrmUtils;->CID_URIS:[Landroid/net/Uri;

    aget-object v2, v3, v9

    .line 113
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v15, "_data"

    aput-object v15, v3, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 114
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 115
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 122
    .end local v2           #uri:Landroid/net/Uri;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 123
    .local v14, total:I
    const/4 v3, 0x1

    if-ge v14, v3, :cond_4

    .line 124
    if-eqz p2, :cond_3

    .line 125
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;->onScanCompletedAll(I)V

    .line 143
    :cond_3
    return v14

    .line 128
    :cond_4
    new-array v12, v14, [Ljava/lang/String;

    .line 129
    .local v12, paths:[Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 130
    if-eqz p2, :cond_5

    .line 131
    new-instance v7, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;

    move-object/from16 v0, p2

    invoke-direct {v7, v0, v14}, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;-><init>(Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;I)V

    .line 132
    .local v7, clientProxy:Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v3, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 137
    .end local v7           #clientProxy:Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 138
    .local v13, size:I
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v13, :cond_3

    .line 139
    const-string v6, "OmaDrmUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "rescanDrmMediaFiles : #"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, " path="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 134
    .end local v13           #size:I
    :cond_5
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v3, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_2
.end method

.method public static scanDrmMediaFile(Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;)I
    .locals 6
    .parameter "context"
    .parameter "file"
    .parameter "callback"

    .prologue
    const/4 v5, 0x0

    .line 156
    const-string v2, "OmaDrmUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scanDrmMediaFile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 159
    .local v1, paths:[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 160
    new-instance v0, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;

    array-length v2, v1

    invoke-direct {v0, p2, v2}, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;-><init>(Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;I)V

    .line 161
    .local v0, clientProxy:Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;
    invoke-static {p0, v1, v5, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 166
    .end local v0           #clientProxy:Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;
    :goto_0
    array-length v2, v1

    return v2

    .line 163
    :cond_0
    invoke-static {p0, v1, v5, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0
.end method
