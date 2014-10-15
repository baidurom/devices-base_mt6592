.class public final Lcom/mediatek/telephony/SimInfoManager;
.super Ljava/lang/Object;
.source "SimInfoManager.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/telephony/SimInfoManager$1;,
        Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;,
        Lcom/mediatek/telephony/SimInfoManager$ErrorCode;
    }
.end annotation


# static fields
.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLOR_1:I = 0x0

.field public static final COLOR_2:I = 0x1

.field public static final COLOR_3:I = 0x2

.field public static final COLOR_4:I = 0x3

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_ROAMING_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field public static final DEFAULT_NAME_MAX_INDEX:I = 0x63

.field public static final DEFAULT_NAME_MIN_INDEX:I = 0x1

.field public static final DEFAULT_NAME_RES:I = 0x2050092

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final DEFAULT_SOURCE:I = 0x0

.field public static final DISLPAY_NUMBER_DEFAULT:I = 0x1

.field public static final DISPALY_NUMBER_NONE:I = 0x0

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_NUMBER_FIRST:I = 0x1

.field public static final DISPLAY_NUMBER_FORMAT:Ljava/lang/String; = "display_number_format"

.field public static final DISPLAY_NUMBER_LAST:I = 0x2

.field public static final ERROR_GENERAL:I = -0x1

.field public static final ERROR_NAME_EXIST:I = -0x2

.field public static final ICC_ID:Ljava/lang/String; = "icc_id"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final OPERATOR:Ljava/lang/String; = "operator"

.field public static final SIM_SOURCE:I = 0x1

.field public static final SLOT:Ljava/lang/String; = "slot"

.field public static final SLOT_NONE:I = -0x1

.field public static final SimBackgroundDarkRes:[I = null

.field public static final SimBackgroundDarkSmallRes:[I = null

.field public static final SimBackgroundLightRes:[I = null

.field public static final SimBackgroundLightSmallRes:[I = null

.field public static final SimBackgroundRes:[I = null

.field public static final USER_INPUT:I = 0x2

.field static final typeBackground:I = 0x0

.field static final typeBackgroundDark:I = 0x1

.field static final typeBackgroundDarkSmall:I = 0x3

.field static final typeBackgroundLight:I = 0x2

.field static final typeBackgroundLightSmall:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    .line 135
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->setSimBackgroundRes(I)[I

    move-result-object v0

    sput-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundRes:[I

    .line 138
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->setSimBackgroundRes(I)[I

    move-result-object v0

    sput-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    .line 140
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->setSimBackgroundRes(I)[I

    move-result-object v0

    sput-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightRes:[I

    .line 143
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->setSimBackgroundRes(I)[I

    move-result-object v0

    sput-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkSmallRes:[I

    .line 144
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->setSimBackgroundRes(I)[I

    move-result-object v0

    sput-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightSmallRes:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    return-void
.end method

.method public static addSimInfoRecord(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 12
    .parameter "ctx"
    .parameter "iccId"
    .parameter "simSlotId"

    .prologue
    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addSimInfoRecord]+ iccId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simSlotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 763
    if-nez p1, :cond_0

    .line 764
    const-string v1, "[addSimInfoRecord]- null iccId"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 765
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IccId should not null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 768
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 769
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "icc_id=?"

    .line 770
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "slot"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 772
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    .line 773
    :cond_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 774
    .local v11, values:Landroid/content/ContentValues;
    const-string v1, "icc_id"

    invoke-virtual {v11, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v1, "color"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 776
    const-string v1, "slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 778
    .local v10, uri:Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addSimInfoRecord]- new sim inserted in slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    .end local v11           #values:Landroid/content/ContentValues;
    :goto_0
    if-eqz v6, :cond_2

    .line 792
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 795
    :cond_2
    return-object v10

    .line 780
    .end local v10           #uri:Landroid/net/Uri;
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 781
    .local v8, simInfoId:J
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 782
    .local v7, oldSlot:I
    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 783
    .restart local v10       #uri:Landroid/net/Uri;
    if-eq p2, v7, :cond_4

    .line 784
    new-instance v11, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v11, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 785
    .restart local v11       #values:Landroid/content/ContentValues;
    const-string v1, "slot"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 786
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 788
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addSimInfoRecord]- existed sim in slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 791
    .end local v7           #oldSlot:I
    .end local v8           #simInfoId:J
    .end local v10           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 792
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method private static fromCursor(Landroid/database/Cursor;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 187
    new-instance v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;-><init>(Lcom/mediatek/telephony/SimInfoManager$1;)V

    .line 188
    .local v0, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const-string v3, "_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 189
    const-string v3, "icc_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    .line 190
    const-string v3, "display_name"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 191
    const-string v3, "name_source"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNameSource:I

    .line 192
    const-string v3, "number"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    .line 193
    const-string v3, "display_number_format"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    .line 194
    const-string v3, "color"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 195
    const-string v3, "data_roaming"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDataRoaming:I

    .line 196
    const-string v3, "slot"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 197
    const-string v3, "operator"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    .line 199
    sget-object v3, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    array-length v2, v3

    .line 200
    .local v2, size:I
    const-string v3, "ro.operator.optr"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, optr:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "OP01"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-nez v3, :cond_3

    .line 203
    iput v6, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 211
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const-string v3, "OP09"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-nez v3, :cond_4

    .line 214
    iput v5, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 222
    :cond_1
    :goto_1
    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    if-ltz v3, :cond_2

    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    if-ge v3, v2, :cond_2

    .line 223
    sget-object v3, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundRes:[I

    iget v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v3, v3, v4

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundRes:I

    .line 225
    sget-object v3, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    iget v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v3, v3, v4

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundDarkRes:I

    .line 226
    sget-object v3, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightRes:[I

    iget v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v3, v3, v4

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundLightRes:I

    .line 229
    sget-object v3, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkSmallRes:[I

    iget v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    rem-int/lit8 v4, v4, 0x2

    aget v3, v3, v4

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundDarkSmallRes:I

    .line 230
    sget-object v3, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightSmallRes:[I

    iget v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    rem-int/lit8 v4, v4, 0x2

    aget v3, v3, v4

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundLightSmallRes:I

    .line 233
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[fromCursor] iccid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " displayName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " color:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " operator:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 235
    return-object v0

    .line 204
    :cond_3
    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v3, v5, :cond_0

    .line 205
    iput v5, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    goto/16 :goto_0

    .line 215
    :cond_4
    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v3, v5, :cond_5

    .line 216
    iput v6, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    goto/16 :goto_1

    .line 219
    :cond_5
    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    rem-int/lit8 v3, v3, 0x2

    iput v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    goto/16 :goto_1
.end method

.method public static getAllSimCount(Landroid/content/Context;)I
    .locals 8
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 517
    const-string v0, "[getAllSimCount]+"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 521
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 522
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 523
    .local v6, count:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getAllSimCount]- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sim in DB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    if-eqz v7, :cond_0

    .line 528
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 532
    .end local v6           #count:I
    :cond_0
    :goto_0
    return v6

    .line 527
    :cond_1
    if-eqz v7, :cond_2

    .line 528
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 531
    :cond_2
    const-string v0, "[getAllSimCount]- return 0"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 532
    const/4 v6, 0x0

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 528
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getAllSimInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 269
    const-string v0, "[getAllSimInfoList]+"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 270
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v7, simList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 274
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 275
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoManager;->fromCursor(Landroid/database/Cursor;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 281
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 280
    :cond_1
    if-eqz v6, :cond_2

    .line 281
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getAllSimInfoList]- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " infos return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 285
    return-object v7
.end method

.method private static getAppropriateIndex(Landroid/content/Context;JLjava/lang/String;)I
    .locals 19
    .parameter "ctx"
    .parameter "simInfoId"
    .parameter "name"

    .prologue
    .line 887
    const v2, 0x2050092

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 888
    .local v10, defaultName:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v2, "display_name LIKE "

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 889
    .local v15, sb:Ljava/lang/StringBuilder;
    if-nez p3, :cond_1

    .line 890
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 894
    :goto_0
    const-string v2, " AND ("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    const-string v2, ")"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "display_name"

    aput-object v6, v4, v5

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "display_name"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 900
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 901
    .local v8, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v13, 0x1

    .line 902
    .local v13, index:I
    if-eqz v9, :cond_3

    .line 903
    :cond_0
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 904
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 905
    .local v11, displayName:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 906
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    .line 907
    .local v14, length:I
    const/4 v2, 0x2

    if-lt v14, v2, :cond_0

    .line 908
    add-int/lit8 v2, v14, -0x2

    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 909
    .local v16, sub:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 910
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 911
    .local v17, value:J
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 892
    .end local v8           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #displayName:Ljava/lang/String;
    .end local v13           #index:I
    .end local v14           #length:I
    .end local v16           #sub:Ljava/lang/String;
    .end local v17           #value:J
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 916
    .restart local v8       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v13       #index:I
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 918
    :cond_3
    const/4 v12, 0x1

    .local v12, i:I
    :goto_2
    const/16 v2, 0x63

    if-gt v12, v2, :cond_5

    .line 919
    int-to-long v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 918
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 922
    :cond_4
    move v13, v12

    .line 926
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getAppropriateIndex] index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 927
    return v13
.end method

.method public static getIdBySlot(Landroid/content/Context;I)J
    .locals 4
    .parameter "ctx"
    .parameter "simSlotId"

    .prologue
    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getIdBySlot]+ simSlotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 447
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 448
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getIdBySlot]- simInfoId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 450
    iget-wide v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 453
    :goto_0
    return-wide v1

    .line 452
    :cond_0
    const-string v1, "[getIdBySlot]- null info, return 0"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 453
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static getInsertedSimCount(Landroid/content/Context;)I
    .locals 8
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 493
    const-string v0, "[getInsertedSimCount]+"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot!=-1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 497
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 498
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 499
    .local v6, count:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getInsertedSimCount]- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sim inserted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    if-eqz v7, :cond_0

    .line 504
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 508
    .end local v6           #count:I
    :cond_0
    :goto_0
    return v6

    .line 503
    :cond_1
    if-eqz v7, :cond_2

    .line 504
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 507
    :cond_2
    const-string v0, "[getInsertedSimCount]- return 0"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 508
    const/4 v6, 0x0

    goto :goto_0

    .line 503
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 504
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 244
    const-string v0, "[getInsertedSimInfoList]+"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 245
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v7, simList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot!=-1"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 249
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 250
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoManager;->fromCursor(Landroid/database/Cursor;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 255
    :cond_1
    if-eqz v6, :cond_2

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getInsertedSimInfoList]- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " infos return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 260
    return-object v7
.end method

.method public static getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "iccId"

    .prologue
    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getOperatorByIccId]+ iccId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 543
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoByIccId(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 544
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getOperatorByIccId]- operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 546
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    .line 549
    :goto_0
    return-object v1

    .line 548
    :cond_0
    const-string v1, "[getOperatorByIccId]- null info, return"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 549
    const-string v1, ""

    goto :goto_0
.end method

.method public static getOperatorBySlot(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "simSlotId"

    .prologue
    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getOperatorBySlot]+ simSlotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 561
    if-gez p1, :cond_0

    .line 562
    const-string v1, "[getOperatorBySlot]- simSlotId < 0"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 563
    const/4 v1, 0x0

    .line 571
    :goto_0
    return-object v1

    .line 565
    :cond_0
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 566
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_1

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getOperatorBySlot]- operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 568
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    goto :goto_0

    .line 570
    :cond_1
    const-string v1, "[getOperatorBySlot]- null info, return"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 571
    const-string v1, ""

    goto :goto_0
.end method

.method public static getSimInfoByIccId(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 7
    .parameter "ctx"
    .parameter "iccId"

    .prologue
    const/4 v2, 0x0

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSimInfoByIccId]+ iccId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 386
    if-nez p1, :cond_1

    .line 387
    const-string v0, "[getSimInfoByIccId]- null iccid"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 405
    :cond_0
    :goto_0
    return-object v2

    .line 390
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "icc_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 393
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 394
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    const-string v0, "[getSimInfoByIccId]- Info detail:"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 396
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoManager;->fromCursor(Landroid/database/Cursor;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 400
    if-eqz v6, :cond_0

    .line 401
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 400
    :cond_2
    if-eqz v6, :cond_3

    .line 401
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_3
    const-string v0, "[getSimInfoByIccId]- null info return"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 401
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 7
    .parameter "ctx"
    .parameter "simInfoId"

    .prologue
    const/4 v2, 0x0

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSimInfoById]+ simInfoId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 296
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 297
    const-string v0, "[getSimInfoById]- simInfoId <= 0"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 315
    :cond_0
    :goto_0
    return-object v2

    .line 300
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 303
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 304
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    const-string v0, "[getSimInfoById]- Info detail:"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 306
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoManager;->fromCursor(Landroid/database/Cursor;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 310
    if-eqz v6, :cond_0

    .line 311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 310
    :cond_2
    if-eqz v6, :cond_3

    .line 311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_3
    const-string v0, "[getSimInfoById]- null info return"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 311
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getSimInfoByName(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 7
    .parameter "ctx"
    .parameter "simName"

    .prologue
    const/4 v2, 0x0

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSimInfoByName]+ name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 326
    if-nez p1, :cond_1

    .line 327
    const-string v0, "[getSimInfoByName]- null name, retur null"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 345
    :cond_0
    :goto_0
    return-object v2

    .line 330
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "display_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 333
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 334
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    const-string v0, "[getSimInfoByName]- Info detail:"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 336
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoManager;->fromCursor(Landroid/database/Cursor;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 340
    if-eqz v6, :cond_0

    .line 341
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 340
    :cond_2
    if-eqz v6, :cond_3

    .line 341
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 344
    :cond_3
    const-string v0, "[getSimInfoByName]- null info return"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 341
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 8
    .parameter "ctx"
    .parameter "simSlotId"

    .prologue
    const/4 v2, 0x0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSimInfoBySlot]+ simSlotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 356
    if-gez p1, :cond_1

    .line 357
    const-string v0, "[getSimInfoBySlot]- simSlotId < 0"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 375
    :cond_0
    :goto_0
    return-object v2

    .line 360
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 363
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 364
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    const-string v0, "[getSimInfoBySlot]- Info detail:"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 366
    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoManager;->fromCursor(Landroid/database/Cursor;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 370
    if-eqz v6, :cond_0

    .line 371
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 370
    :cond_2
    if-eqz v6, :cond_3

    .line 371
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 374
    :cond_3
    const-string v0, "[getSimInfoBySlot]- null info return"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 371
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getSlotById(Landroid/content/Context;J)I
    .locals 8
    .parameter "ctx"
    .parameter "simInfoId"

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSlotById]+ simInfoId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 416
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 417
    const-string v0, "[getSlotById]- simInfoId <= 0"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 436
    :cond_0
    :goto_0
    return v7

    .line 420
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "slot"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 423
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 424
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 426
    .local v7, slot:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSlotById]- sim in slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    if-eqz v6, :cond_0

    .line 432
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 431
    .end local v7           #slot:I
    :cond_2
    if-eqz v6, :cond_3

    .line 432
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_3
    const-string v0, "[getSlotById]- fail, return -1"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 432
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getSlotByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .parameter "ctx"
    .parameter "simName"

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSlotByName]+ name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 464
    if-nez p1, :cond_1

    .line 465
    const-string v0, "[getSlotByName]- simName is null, return -1"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 484
    :cond_0
    :goto_0
    return v7

    .line 468
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "slot"

    aput-object v3, v2, v5

    const-string v3, "display_name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 471
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 472
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 474
    .local v7, slot:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSlotByName]- sim in slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    if-eqz v6, :cond_0

    .line 480
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 479
    .end local v7           #slot:I
    :cond_2
    if-eqz v6, :cond_3

    .line 480
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 483
    :cond_3
    const-string v0, "[getSlotByName]- fail, return -1"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 480
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static getSuffixFromIndex(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 878
    const-string v0, "[getSuffixFromIndex]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 879
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 931
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimInfoManager]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    return-void
.end method

.method public static setColor(Landroid/content/Context;IJ)I
    .locals 5
    .parameter "ctx"
    .parameter "color"
    .parameter "simInfoId"

    .prologue
    const/4 v4, 0x0

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setColor]+ color:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simInfoId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 702
    sget-object v2, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundRes:[I

    array-length v0, v2

    .line 703
    .local v0, size:I
    if-ltz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    if-lt p1, v0, :cond_1

    .line 704
    :cond_0
    const-string v2, "[setColor]- fail, return -1"

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 705
    const/4 v2, -0x1

    .line 710
    :goto_0
    return v2

    .line 707
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 708
    .local v1, value:Landroid/content/ContentValues;
    const-string v2, "color"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setColor]- color:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static setDataRoaming(Landroid/content/Context;IJ)I
    .locals 4
    .parameter "ctx"
    .parameter "roaming"
    .parameter "simInfoId"

    .prologue
    const/4 v3, 0x0

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataRoaming]+ roaming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simInfoId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 743
    if-ltz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    .line 744
    :cond_0
    const-string v1, "[setDataRoaming]- fail, return -1"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 745
    const/4 v1, -0x1

    .line 750
    :goto_0
    return v1

    .line 747
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 748
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "data_roaming"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataRoaming]- roaming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setDefaultName(Landroid/content/Context;JLjava/lang/String;)I
    .locals 17
    .parameter "ctx"
    .parameter "simInfoId"
    .parameter "name"

    .prologue
    .line 806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDefaultName]+ simInfoId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 807
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 808
    const-string v2, "[setDefaultName]- simInfoId <= 0, return -1"

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 809
    const/4 v13, -0x1

    .line 833
    :goto_0
    return v13

    .line 811
    :cond_0
    const v2, 0x2050092

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 812
    .local v8, defaultName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 813
    .local v12, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 814
    .local v15, uri:Landroid/net/Uri;
    if-eqz p3, :cond_1

    .line 815
    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-wide/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/mediatek/telephony/SimInfoManager;->setDisplayNameEx(Landroid/content/Context;Ljava/lang/String;JJ)I

    move-result v13

    .line 816
    .local v13, result:I
    if-lez v13, :cond_1

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDefaultName]- name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 821
    .end local v13           #result:I
    :cond_1
    invoke-static/range {p0 .. p3}, Lcom/mediatek/telephony/SimInfoManager;->getAppropriateIndex(Landroid/content/Context;JLjava/lang/String;)I

    move-result v10

    .line 822
    .local v10, index:I
    invoke-static {v10}, Lcom/mediatek/telephony/SimInfoManager;->getSuffixFromIndex(I)Ljava/lang/String;

    move-result-object v14

    .line 823
    .local v14, suffix:Ljava/lang/String;
    new-instance v16, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 826
    .local v16, value:Landroid/content/ContentValues;
    const-string v2, "ro.operator.optr"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 827
    .local v11, optr:Ljava/lang/String;
    if-eqz v11, :cond_3

    const-string v2, "OP01"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "OP09"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 828
    :cond_2
    move-object v9, v8

    .line 831
    .local v9, displayName:Ljava/lang/String;
    :goto_1
    const-string v2, "display_name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDefaultName]- name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 833
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_0

    .line 830
    .end local v9           #displayName:Ljava/lang/String;
    :cond_3
    if-nez p3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #displayName:Ljava/lang/String;
    :goto_2
    goto :goto_1

    .end local v9           #displayName:Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2
.end method

.method public static setDefaultNameEx(Landroid/content/Context;JLjava/lang/String;J)I
    .locals 17
    .parameter "ctx"
    .parameter "simInfoId"
    .parameter "name"
    .parameter "nameSource"

    .prologue
    .line 845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDefaultNameEx]+ simInfoId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 846
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 847
    const-string v2, "[setDefaultNameEx]- simInfoId <= 0, return -1"

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 848
    const/4 v13, -0x1

    .line 874
    :goto_0
    return v13

    .line 850
    :cond_0
    const v2, 0x2050092

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 851
    .local v8, defaultName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 852
    .local v12, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 853
    .local v15, uri:Landroid/net/Uri;
    if-eqz p3, :cond_1

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-wide/from16 v4, p1

    move-wide/from16 v6, p4

    .line 854
    invoke-static/range {v2 .. v7}, Lcom/mediatek/telephony/SimInfoManager;->setDisplayNameEx(Landroid/content/Context;Ljava/lang/String;JJ)I

    move-result v13

    .line 855
    .local v13, result:I
    if-lez v13, :cond_1

    .line 856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDefaultNameEx]- name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set, source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 860
    .end local v13           #result:I
    :cond_1
    invoke-static/range {p0 .. p3}, Lcom/mediatek/telephony/SimInfoManager;->getAppropriateIndex(Landroid/content/Context;JLjava/lang/String;)I

    move-result v10

    .line 861
    .local v10, index:I
    invoke-static {v10}, Lcom/mediatek/telephony/SimInfoManager;->getSuffixFromIndex(I)Ljava/lang/String;

    move-result-object v14

    .line 862
    .local v14, suffix:Ljava/lang/String;
    new-instance v16, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 865
    .local v16, value:Landroid/content/ContentValues;
    const-string v2, "ro.operator.optr"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 866
    .local v11, optr:Ljava/lang/String;
    if-eqz v11, :cond_3

    const-string v2, "OP01"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "OP09"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 867
    :cond_2
    move-object v9, v8

    .line 871
    .local v9, displayName:Ljava/lang/String;
    :goto_1
    const-string v2, "display_name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string v2, "name_source"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 873
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDefaultNameEx]- name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set, source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 874
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_0

    .line 869
    .end local v9           #displayName:Ljava/lang/String;
    :cond_3
    if-nez p3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #displayName:Ljava/lang/String;
    :goto_2
    goto :goto_1

    .end local v9           #displayName:Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2
.end method

.method public static setDispalyNumberFormat(Landroid/content/Context;IJ)I
    .locals 4
    .parameter "ctx"
    .parameter "format"
    .parameter "simInfoId"

    .prologue
    const/4 v3, 0x0

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDispalyNumberFormat]+ format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simInfoId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 723
    if-ltz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    .line 724
    :cond_0
    const-string v1, "[setDispalyNumberFormat]- fail, return -1"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 725
    const/4 v1, -0x1

    .line 730
    :goto_0
    return v1

    .line 727
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 728
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "display_number_format"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDispalyNumberFormat]- format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setDisplayName(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 11
    .parameter "ctx"
    .parameter "displayName"
    .parameter "simInfoId"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setDisplayName]+ name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " simInfoId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 604
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    .line 605
    :cond_0
    const-string v0, "[setDisplayName]- fail, return -1"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 606
    const/4 v0, -0x1

    .line 629
    :cond_1
    :goto_0
    return v0

    .line 609
    :cond_2
    const-string v0, "ro.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 610
    .local v7, optr:Ljava/lang/String;
    const-string v0, "OP01"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 611
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v10

    const-string v3, "display_name=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 614
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 615
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 616
    const-string v0, "[setDisplayName]- name exist, return -2"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    const/4 v0, -0x2

    .line 621
    if-eqz v6, :cond_1

    .line 622
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 621
    :cond_3
    if-eqz v6, :cond_4

    .line 622
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 626
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_4
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 627
    .local v8, value:Landroid/content/ContentValues;
    const-string v0, "display_name"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setDisplayName]- displayName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 621
    .end local v8           #value:Landroid/content/ContentValues;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 622
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static setDisplayNameEx(Landroid/content/Context;Ljava/lang/String;JJ)I
    .locals 9
    .parameter "ctx"
    .parameter "displayName"
    .parameter "simInfoId"
    .parameter "source"

    .prologue
    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setDisplayNameEx]+  name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " simInfoId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 643
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    .line 644
    :cond_0
    const-string v0, "[setDisplayNameEx]- fail, return -1"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 645
    const/4 v0, -0x1

    .line 669
    :cond_1
    :goto_0
    return v0

    .line 648
    :cond_2
    const-string v0, "ro.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 649
    .local v7, optr:Ljava/lang/String;
    const-string v0, "OP01"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 650
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "display_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 653
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 654
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 655
    const-string v0, "[setDisplayNameEx]- name exist, return -2"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    const/4 v0, -0x2

    .line 660
    if-eqz v6, :cond_1

    .line 661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 660
    :cond_3
    if-eqz v6, :cond_4

    .line 661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 665
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_4
    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 666
    .local v8, value:Landroid/content/ContentValues;
    const-string v0, "display_name"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v0, "name_source"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setDisplayNameEx]- displayName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set, source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 660
    .end local v8           #value:Landroid/content/ContentValues;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static setNumber(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 4
    .parameter "ctx"
    .parameter "number"
    .parameter "simInfoId"

    .prologue
    const/4 v3, 0x0

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setNumber]+ number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simInfoId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 682
    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_1

    .line 683
    :cond_0
    const-string v1, "[setNumber]- fail, return -1"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 684
    const/4 v1, -0x1

    .line 689
    :goto_0
    return v1

    .line 686
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 687
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setNumber]- number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static setOperatorById(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 4
    .parameter "ctx"
    .parameter "operator"
    .parameter "simInfoId"

    .prologue
    const/4 v3, 0x0

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setOperatorById]+ operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simInfoId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 584
    if-nez p1, :cond_0

    .line 585
    const-string v1, "[setOperatorById]- null operator, return -1"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 586
    const/4 v1, -0x1

    .line 591
    :goto_0
    return v1

    .line 588
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 589
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "operator"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setOperatorById]- operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->logd(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/telephony/SimInfoManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private static setSimBackgroundRes(I)[I
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 935
    const/4 v1, 0x0

    .line 936
    .local v1, tmpSimBackgroundRes:[I
    const-string v2, "ro.operator.optr"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 937
    .local v0, optr:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 989
    :goto_0
    return-object v1

    .line 939
    :pswitch_0
    new-array v1, v4, [I

    .end local v1           #tmpSimBackgroundRes:[I
    fill-array-data v1, :array_0

    .line 945
    .restart local v1       #tmpSimBackgroundRes:[I
    goto :goto_0

    .line 947
    :pswitch_1
    if-eqz v0, :cond_0

    const-string v2, "OP09"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 948
    new-array v1, v3, [I

    .end local v1           #tmpSimBackgroundRes:[I
    fill-array-data v1, :array_1

    .restart local v1       #tmpSimBackgroundRes:[I
    goto :goto_0

    .line 953
    :cond_0
    new-array v1, v4, [I

    .end local v1           #tmpSimBackgroundRes:[I
    fill-array-data v1, :array_2

    .line 960
    .restart local v1       #tmpSimBackgroundRes:[I
    goto :goto_0

    .line 962
    :pswitch_2
    if-eqz v0, :cond_1

    const-string v2, "OP09"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 963
    new-array v1, v3, [I

    .end local v1           #tmpSimBackgroundRes:[I
    fill-array-data v1, :array_3

    .restart local v1       #tmpSimBackgroundRes:[I
    goto :goto_0

    .line 968
    :cond_1
    new-array v1, v4, [I

    .end local v1           #tmpSimBackgroundRes:[I
    fill-array-data v1, :array_4

    .line 975
    .restart local v1       #tmpSimBackgroundRes:[I
    goto :goto_0

    .line 977
    :pswitch_3
    new-array v1, v3, [I

    .end local v1           #tmpSimBackgroundRes:[I
    fill-array-data v1, :array_5

    .line 981
    .restart local v1       #tmpSimBackgroundRes:[I
    goto :goto_0

    .line 983
    :pswitch_4
    new-array v1, v3, [I

    .end local v1           #tmpSimBackgroundRes:[I
    fill-array-data v1, :array_6

    .restart local v1       #tmpSimBackgroundRes:[I
    goto :goto_0

    .line 937
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 939
    :array_0
    .array-data 0x4
        0xect 0x0t 0x2t 0x2t
        0xeft 0x0t 0x2t 0x2t
        0xedt 0x0t 0x2t 0x2t
        0xf0t 0x0t 0x2t 0x2t
    .end array-data

    .line 948
    :array_1
    .array-data 0x4
        0x3ct 0x0t 0x2t 0x2t
        0x3bt 0x0t 0x2t 0x2t
    .end array-data

    .line 953
    :array_2
    .array-data 0x4
        0xfbt 0x0t 0x2t 0x2t
        0xfdt 0x0t 0x2t 0x2t
        0xfct 0x0t 0x2t 0x2t
        0xfet 0x0t 0x2t 0x2t
    .end array-data

    .line 963
    :array_3
    .array-data 0x4
        0x85t 0x0t 0x2t 0x2t
        0x84t 0x0t 0x2t 0x2t
    .end array-data

    .line 968
    :array_4
    .array-data 0x4
        0x4t 0x1t 0x2t 0x2t
        0x6t 0x1t 0x2t 0x2t
        0x5t 0x1t 0x2t 0x2t
        0x7t 0x1t 0x2t 0x2t
    .end array-data

    .line 977
    :array_5
    .array-data 0x4
        0x3et 0x0t 0x2t 0x2t
        0x3dt 0x0t 0x2t 0x2t
    .end array-data

    .line 983
    :array_6
    .array-data 0x4
        0x87t 0x0t 0x2t 0x2t
        0x86t 0x0t 0x2t 0x2t
    .end array-data
.end method
