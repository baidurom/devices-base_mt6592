.class public Lcom/mediatek/telephony/Switch3GPolicyDefault;
.super Ljava/lang/Object;
.source "Switch3GPolicyDefault.java"

# interfaces
.implements Lcom/mediatek/common/telephony/ISwitch3GPolicy;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Switch3GPolicyDefault"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "ctx"
    .parameter "iccId1"
    .parameter "iccId2"
    .parameter "iccId3"
    .parameter "iccId4"

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, nRet:I
    if-eqz p2, :cond_0

    .line 159
    or-int/lit8 v0, v0, 0x1

    .line 160
    :cond_0
    if-eqz p3, :cond_1

    .line 161
    or-int/lit8 v0, v0, 0x2

    .line 162
    :cond_1
    if-eqz p4, :cond_2

    .line 163
    or-int/lit8 v0, v0, 0x4

    .line 164
    :cond_2
    if-eqz p5, :cond_3

    .line 165
    or-int/lit8 v0, v0, 0x8

    .line 166
    :cond_3
    const-string v1, "Switch3GPolicyDefault"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllowedSwitch3GSlots nRet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v0
.end method

.method public isManualModeChange3GAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ctx"
    .parameter "iccId1"
    .parameter "iccId2"
    .parameter "iccId3"
    .parameter "iccId4"

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public isManualModeEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ctx"
    .parameter "iccId1"
    .parameter "iccId2"
    .parameter "iccId3"
    .parameter "iccId4"

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public select3GCapability(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "ctx"
    .parameter "iccId3GSim"
    .parameter "id3GSim"
    .parameter "iccId1"
    .parameter "iccId2"
    .parameter "iccId3"
    .parameter "iccId4"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 55
    const/4 v0, -0x1

    .line 57
    .local v0, selected:I
    const-string v1, "Switch3GPolicyDefault"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select3GCapability (iccId3GSim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id3GSim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iccId1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iccId2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iccId3="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iccId4="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-eqz p2, :cond_10

    .line 63
    if-nez p3, :cond_7

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 64
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "Found 3G capability SIM at same slot (SIM1), stays."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/16 v0, 0x15

    .line 77
    :cond_0
    :goto_0
    if-ne v0, v7, :cond_1

    .line 81
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz p3, :cond_a

    .line 82
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "scenario 1: Need to switch 3G capability to SIM1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x1

    .line 96
    :cond_1
    :goto_1
    if-ne v0, v7, :cond_6

    .line 101
    if-nez p3, :cond_2

    if-eqz p4, :cond_5

    :cond_2
    if-ne p3, v4, :cond_3

    if-eqz p5, :cond_5

    :cond_3
    if-ne p3, v5, :cond_4

    if-eqz p6, :cond_5

    :cond_4
    if-ne p3, v6, :cond_6

    if-nez p7, :cond_6

    .line 107
    :cond_5
    if-eqz p4, :cond_d

    .line 108
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "scenario 2: Need to switch 3G capability to the other inserted SIM1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x1

    .line 142
    :cond_6
    :goto_2
    return v0

    .line 66
    :cond_7
    if-ne p3, v4, :cond_8

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 67
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "Found 3G capability SIM at same slot (SIM2), stays."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/16 v0, 0x15

    goto :goto_0

    .line 69
    :cond_8
    if-ne p3, v5, :cond_9

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 70
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "Found 3G capability SIM at same slot (SIM3), stays."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/16 v0, 0x15

    goto :goto_0

    .line 72
    :cond_9
    if-ne p3, v6, :cond_0

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "Found 3G capability SIM at same slot (SIM4), stays."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/16 v0, 0x15

    goto :goto_0

    .line 84
    :cond_a
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eq p3, v4, :cond_b

    .line 85
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "scenario 1: Need to switch 3G capability to SIM2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x2

    goto :goto_1

    .line 87
    :cond_b
    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eq p3, v5, :cond_c

    .line 88
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "scenario 1: Need to switch 3G capability to SIM3"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x3

    goto :goto_1

    .line 90
    :cond_c
    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p3, v6, :cond_1

    .line 91
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "scenario 1: Need to switch 3G capability to SIM4"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x4

    goto/16 :goto_1

    .line 110
    :cond_d
    if-eqz p5, :cond_e

    .line 111
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "scenario 2: Need to switch 3G capability to the other inserted SIM2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x2

    goto :goto_2

    .line 113
    :cond_e
    if-eqz p6, :cond_f

    .line 114
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "scenario 2: Need to switch 3G capability to the other inserted SIM3"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x3

    goto :goto_2

    .line 116
    :cond_f
    if-eqz p7, :cond_6

    .line 117
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "scenario 2: Need to switch 3G capability to the other inserted SIM4"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x4

    goto/16 :goto_2

    .line 128
    :cond_10
    if-nez p4, :cond_6

    .line 129
    if-eqz p5, :cond_11

    .line 130
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "scenario 3: Need to switch 3G capability to the inserted SIM2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x2

    goto/16 :goto_2

    .line 132
    :cond_11
    if-eqz p6, :cond_12

    .line 133
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "scenario 3: Need to switch 3G capability to the inserted SIM3"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x3

    goto/16 :goto_2

    .line 135
    :cond_12
    if-eqz p7, :cond_6

    .line 136
    const-string v1, "Switch3GPolicyDefault"

    const-string v2, "scenario 3: Need to switch 3G capability to the inserted SIM4"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x4

    goto/16 :goto_2
.end method
