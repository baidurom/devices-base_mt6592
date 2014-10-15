.class public abstract Lcom/mediatek/telephony/WorldPhoneUtil;
.super Ljava/lang/Object;
.source "WorldPhoneUtil.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IWorldPhone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "Constructor invoked"

    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static denyReasonToString(I)Ljava/lang/String;
    .locals 1
    .parameter "reason"

    .prologue
    .line 150
    packed-switch p0, :pswitch_data_0

    .line 167
    const-string v0, "Invalid Reason"

    .line 170
    .local v0, drString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 152
    .end local v0           #drString:Ljava/lang/String;
    :pswitch_0
    const-string v0, "CAMP_ON_NOT_DENIED"

    .line 153
    .restart local v0       #drString:Ljava/lang/String;
    goto :goto_0

    .line 155
    .end local v0           #drString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "DENY_CAMP_ON_REASON_UNKNOWN"

    .line 156
    .restart local v0       #drString:Ljava/lang/String;
    goto :goto_0

    .line 158
    .end local v0           #drString:Ljava/lang/String;
    :pswitch_2
    const-string v0, "DENY_CAMP_ON_REASON_NEED_SWITCH_TO_FDD"

    .line 159
    .restart local v0       #drString:Ljava/lang/String;
    goto :goto_0

    .line 161
    .end local v0           #drString:Ljava/lang/String;
    :pswitch_3
    const-string v0, "DENY_CAMP_ON_REASON_NEED_SWITCH_TO_TDD"

    .line 162
    .restart local v0       #drString:Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v0           #drString:Ljava/lang/String;
    :pswitch_4
    const-string v0, "DENY_CAMP_ON_REASON_DOMESTIC_WCDMA"

    .line 165
    .restart local v0       #drString:Ljava/lang/String;
    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getMcc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "srcImsiOrPlmn"

    .prologue
    .line 60
    if-eqz p0, :cond_0

    .line 61
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const-string v1, "[getMcc] null source"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMccMnc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "srcImsiOrPlmn"

    .prologue
    .line 50
    if-eqz p0, :cond_0

    .line 51
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 54
    :cond_0
    const-string v1, "[getMccMnc] null source"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMnc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "srcImsiOrPlmn"

    .prologue
    .line 70
    if-eqz p0, :cond_0

    .line 71
    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 74
    :cond_0
    const-string v1, "[getMnc] null source"

    invoke-static {v1}, Lcom/mediatek/telephony/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 174
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WPP_UTIL]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public static regStateToString(I)Ljava/lang/String;
    .locals 1
    .parameter "regState"

    .prologue
    .line 122
    packed-switch p0, :pswitch_data_0

    .line 142
    const-string v0, "Invalid RegState"

    .line 145
    .local v0, rsString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 124
    .end local v0           #rsString:Ljava/lang/String;
    :pswitch_0
    const-string v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING"

    .line 125
    .restart local v0       #rsString:Ljava/lang/String;
    goto :goto_0

    .line 127
    .end local v0           #rsString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "REGISTRATION_STATE_HOME_NETWORK"

    .line 128
    .restart local v0       #rsString:Ljava/lang/String;
    goto :goto_0

    .line 130
    .end local v0           #rsString:Ljava/lang/String;
    :pswitch_2
    const-string v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING"

    .line 131
    .restart local v0       #rsString:Ljava/lang/String;
    goto :goto_0

    .line 133
    .end local v0           #rsString:Ljava/lang/String;
    :pswitch_3
    const-string v0, "REGISTRATION_STATE_REGISTRATION_DENIED"

    .line 134
    .restart local v0       #rsString:Ljava/lang/String;
    goto :goto_0

    .line 136
    .end local v0           #rsString:Ljava/lang/String;
    :pswitch_4
    const-string v0, "REGISTRATION_STATE_UNKNOWN"

    .line 137
    .restart local v0       #rsString:Ljava/lang/String;
    goto :goto_0

    .line 139
    .end local v0           #rsString:Ljava/lang/String;
    :pswitch_5
    const-string v0, "REGISTRATION_STATE_ROAMING"

    .line 140
    .restart local v0       #rsString:Ljava/lang/String;
    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static regionToString(I)Ljava/lang/String;
    .locals 1
    .parameter "region"

    .prologue
    .line 81
    packed-switch p0, :pswitch_data_0

    .line 92
    const-string v0, "Invalid Region"

    .line 95
    .local v0, regionString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 83
    .end local v0           #regionString:Ljava/lang/String;
    :pswitch_0
    const-string v0, "REGION_UNKNOWN"

    .line 84
    .restart local v0       #regionString:Ljava/lang/String;
    goto :goto_0

    .line 86
    .end local v0           #regionString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "REGION_DOMESTIC"

    .line 87
    .restart local v0       #regionString:Ljava/lang/String;
    goto :goto_0

    .line 89
    .end local v0           #regionString:Ljava/lang/String;
    :pswitch_2
    const-string v0, "REGION_FOREIGN"

    .line 90
    .restart local v0       #regionString:Ljava/lang/String;
    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 100
    packed-switch p0, :pswitch_data_0

    .line 114
    const-string v0, "Invalid State"

    .line 117
    .local v0, stateString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 102
    .end local v0           #stateString:Ljava/lang/String;
    :pswitch_0
    const-string v0, "STATE_POWER_OFF"

    .line 103
    .restart local v0       #stateString:Ljava/lang/String;
    goto :goto_0

    .line 105
    .end local v0           #stateString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "STATE_IN_SERVICE"

    .line 106
    .restart local v0       #stateString:Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v0           #stateString:Ljava/lang/String;
    :pswitch_2
    const-string v0, "STATE_OUT_OF_SERVICE"

    .line 109
    .restart local v0       #stateString:Ljava/lang/String;
    goto :goto_0

    .line 111
    .end local v0           #stateString:Ljava/lang/String;
    :pswitch_3
    const-string v0, "STATE_EMERGENCY_ONLY"

    .line 112
    .restart local v0       #stateString:Ljava/lang/String;
    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
