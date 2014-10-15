.class Lcom/android/internal/telephony/CallerInfo$BaiduInjector;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initCallerInfoExt(Lcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;)V
    .locals 3
    .parameter "info"
    .parameter "cursor"

    .prologue
    const/4 v2, -0x1

    const-string v1, "width"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, columnIndex:I
    if-eq v0, v2, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/CallerInfo;->mPhotoWidth:I

    :cond_0
    const-string v1, "height"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/CallerInfo;->mPhotoHeight:I

    :cond_1
    const-string v1, "photo_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/CallerInfo;->mPhotoID:I

    :cond_2
    const-string v1, "view_mode"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/CallerInfo;->mViewMode:I

    :cond_3
    return-void
.end method

.method public static updateGeoDescriptionAndLabel(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "ci"
    .parameter "context"
    .parameter "fallbackNumber"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .local v1, phoneNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, p2

    .local v0, number:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v0, v3, v4}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->getPhoneLocationAndLabel(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;

    move-result-object v2

    .local v2, pl:Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;
    iget-object v3, v2, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mLocation:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    iget-object v3, v2, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mLabel:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/CallerInfo;->label:Ljava/lang/String;

    iget v3, v2, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mCount:I

    iput v3, p0, Lcom/android/internal/telephony/CallerInfo;->count:I

    invoke-static {}, Lcom/android/internal/telephony/CallerInfo;->access$sget-VDBG-988cc2()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "CallerInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateGeoDescritionAndLabel(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", label = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/CallerInfo;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/CallerInfo;->count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .end local v0           #number:Ljava/lang/String;
    .end local v2           #pl:Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
