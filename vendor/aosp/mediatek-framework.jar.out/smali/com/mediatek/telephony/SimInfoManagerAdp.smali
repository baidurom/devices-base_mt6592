.class public final Lcom/mediatek/telephony/SimInfoManagerAdp;
.super Ljava/lang/Object;
.source "SimInfoManagerAdp.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSimInfoRecordAdp(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 1
    .parameter "ctx"
    .parameter "iccId"
    .parameter "slot"

    .prologue
    .line 181
    const-string v0, "[addSimInfoRecordAdp]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 182
    invoke-static {p0, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->addSimInfoRecord(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static copyFromSimInfoRecord(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)Landroid/provider/Telephony$SIMInfo;
    .locals 3
    .parameter "simInfoRecord"

    .prologue
    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    .line 43
    :cond_0
    invoke-static {}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoInstance()Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 44
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    iget-wide v1, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    iput-wide v1, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 45
    iget-object v1, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    iput-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 47
    iget v1, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNameSource:I

    iput v1, v0, Landroid/provider/Telephony$SIMInfo;->mNameSource:I

    .line 48
    iget-object v1, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    iput-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    .line 49
    iget v1, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    iput v1, v0, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    .line 50
    iget v1, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    iput v1, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    .line 51
    iget v1, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDataRoaming:I

    iput v1, v0, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    .line 52
    iget v1, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iput v1, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 53
    iget-object v1, p0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    iput-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mOperator:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAllSimCountAdp(Landroid/content/Context;)I
    .locals 1
    .parameter "ctx"

    .prologue
    .line 131
    const-string v0, "[getAllSimCountAdp]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 132
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getAllSimCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getAllSimInfoListAdp(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    const-string v3, "[getAllSimInfoListAdp]"

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 74
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getAllSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 75
    .local v1, simInfoRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-nez v1, :cond_1

    .line 76
    const/4 v2, 0x0

    .line 82
    :cond_0
    return-object v2

    .line 78
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 80
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManagerAdp;->copyFromSimInfoRecord(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getIdBySlotAdp(Landroid/content/Context;I)J
    .locals 2
    .parameter "ctx"
    .parameter "slot"

    .prologue
    .line 116
    const-string v0, "[getIdBySlotAdp]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 117
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getIdBySlot(Landroid/content/Context;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInsertedSimCountAdp(Landroid/content/Context;)I
    .locals 1
    .parameter "ctx"

    .prologue
    .line 126
    const-string v0, "[getInsertedSimCountAdp]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 127
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getInsertedSimInfoListAdp(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    const-string v3, "[getInsertedSimInfoListAdp]"

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 60
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 61
    .local v1, simInfoRecordList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-nez v1, :cond_1

    .line 62
    const/4 v2, 0x0

    .line 68
    :cond_0
    return-object v2

    .line 64
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v2, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 66
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManagerAdp;->copyFromSimInfoRecord(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getOperatorByIccIdAdp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ctx"
    .parameter "iccId"

    .prologue
    .line 136
    const-string v0, "[getOperatorByIccIdAdp]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 137
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOperatorBySlotAdp(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "ctx"
    .parameter "slotId"

    .prologue
    .line 141
    const-string v0, "[getOperatorBySlotAdp]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 142
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getOperatorBySlot(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimInfoByIccIdAdp(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;
    .locals 2
    .parameter "ctx"
    .parameter "iccId"

    .prologue
    .line 105
    const-string v1, "[getSimInfoByIccIdAdp]"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 106
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoByIccId(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 107
    .local v0, simInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->copyFromSimInfoRecord(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getSimInfoByIdAdp(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;
    .locals 2
    .parameter "ctx"
    .parameter "simId"

    .prologue
    .line 87
    const-string v1, "[getSimInfoByIdAdp]"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 88
    invoke-static {p0, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 89
    .local v0, simInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->copyFromSimInfoRecord(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getSimInfoByNameAdp(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/Telephony$SIMInfo;
    .locals 2
    .parameter "ctx"
    .parameter "simName"

    .prologue
    .line 93
    const-string v1, "[getSimInfoByNameAdp]"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 94
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoByName(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 95
    .local v0, simInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->copyFromSimInfoRecord(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getSimInfoBySlotAdp(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;
    .locals 2
    .parameter "ctx"
    .parameter "slotId"

    .prologue
    .line 99
    const-string v1, "[getSimInfoBySlotAdp]"

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 100
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 101
    .local v0, simInfoRecord:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->copyFromSimInfoRecord(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getSlotByIdAdp(Landroid/content/Context;J)I
    .locals 1
    .parameter "ctx"
    .parameter "simId"

    .prologue
    .line 111
    const-string v0, "[getSlotByIdAdp]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 112
    invoke-static {p0, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v0

    return v0
.end method

.method public static getSlotByNameAdp(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "ctx"
    .parameter "simName"

    .prologue
    .line 121
    const-string v0, "[getSlotByNameAdp]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 122
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSlotByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 196
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimInfoManagerAdp]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public static setColorAdp(Landroid/content/Context;IJ)I
    .locals 1
    .parameter "ctx"
    .parameter "color"
    .parameter "simId"

    .prologue
    .line 166
    const-string v0, "[setColorAdp]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 167
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/telephony/SimInfoManager;->setColor(Landroid/content/Context;IJ)I

    move-result v0

    return v0
.end method

.method public static setDataRoamingAdp(Landroid/content/Context;IJ)I
    .locals 1
    .parameter "ctx"
    .parameter "roaming"
    .parameter "simId"

    .prologue
    .line 176
    const-string v0, "[setDataRoamingAdp]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 177
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/telephony/SimInfoManager;->setDataRoaming(Landroid/content/Context;IJ)I

    move-result v0

    return v0
.end method

.method public static setDefaultNameAdp(Landroid/content/Context;JLjava/lang/String;)I
    .locals 1
    .parameter "ctx"
    .parameter "simId"
    .parameter "name"

    .prologue
    .line 186
    const-string v0, "[setDefaultNameAdp]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 187
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/telephony/SimInfoManager;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setDefaultNameExAdp(Landroid/content/Context;JLjava/lang/String;J)I
    .locals 1
    .parameter "ctx"
    .parameter "simId"
    .parameter "name"
    .parameter "nameSource"

    .prologue
    .line 191
    const-string v0, "[setDefaultNameExAdp]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 192
    invoke-static/range {p0 .. p5}, Lcom/mediatek/telephony/SimInfoManager;->setDefaultNameEx(Landroid/content/Context;JLjava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static setDispalyNumberFormatAdp(Landroid/content/Context;IJ)I
    .locals 1
    .parameter "ctx"
    .parameter "format"
    .parameter "simId"

    .prologue
    .line 171
    const-string v0, "[setDispalyNumberFormatAdp]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 172
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/telephony/SimInfoManager;->setDispalyNumberFormat(Landroid/content/Context;IJ)I

    move-result v0

    return v0
.end method

.method public static setDisplayNameAdp(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 1
    .parameter "ctx"
    .parameter "displayName"
    .parameter "simId"

    .prologue
    .line 151
    const-string v0, "[setDisplayNameAdp]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 152
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/telephony/SimInfoManager;->setDisplayName(Landroid/content/Context;Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static setDisplayNameExAdp(Landroid/content/Context;Ljava/lang/String;JJ)I
    .locals 1
    .parameter "ctx"
    .parameter "displayName"
    .parameter "simId"
    .parameter "source"

    .prologue
    .line 156
    const-string v0, "[setDisplayNameExAdp]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 157
    invoke-static/range {p0 .. p5}, Lcom/mediatek/telephony/SimInfoManager;->setDisplayNameEx(Landroid/content/Context;Ljava/lang/String;JJ)I

    move-result v0

    return v0
.end method

.method public static setNumberAdp(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 1
    .parameter "ctx"
    .parameter "number"
    .parameter "simId"

    .prologue
    .line 161
    const-string v0, "[setNumberAdp]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 162
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/telephony/SimInfoManager;->setNumber(Landroid/content/Context;Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static setOperatorByIdAdp(Landroid/content/Context;Ljava/lang/String;J)I
    .locals 1
    .parameter "ctx"
    .parameter "operator"
    .parameter "simId"

    .prologue
    .line 146
    const-string v0, "[setOperatorByIdAdp]"

    invoke-static {v0}, Lcom/mediatek/telephony/SimInfoManagerAdp;->logd(Ljava/lang/String;)V

    .line 147
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/telephony/SimInfoManager;->setOperatorById(Landroid/content/Context;Ljava/lang/String;J)I

    move-result v0

    return v0
.end method
